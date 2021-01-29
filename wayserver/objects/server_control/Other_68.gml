/// @description 
    
     var type = ds_map_find_value(async_load, "type");
    switch(type)
        {
			
		case network_type_connect:
				var client_socket = ds_map_find_value(async_load, "socket");
				ds_list_add(clients_sockets,client_socket);
				clients_number++;
				send_connected_notif(client_socket);
        break;
            
            
		case network_type_disconnect:
				//remove player from clients
				var dis_client_socket = ds_map_find_value(async_load, "socket");
				var pos = ds_list_find_index(clients_sockets, dis_client_socket);
				ds_list_delete(clients_sockets,pos);
				var found=0;
				for(var i=1;i<=max_sessions and found=0;i++)
				{
					var pos = ds_list_find_index(session_clients[i], dis_client_socket);
					if (pos!=-1)
					{
						ds_list_delete(session_clients[i],pos);
						if ds_list_size(session_clients[i])==0
							active_sessions--;
						found=1;
					}
				}
				clients_number--;
		break;
            
        case network_type_data:
				r_buffer=ds_map_find_value(async_load, "buffer");
				r_socket=ds_map_find_value(async_load, "id");
				get_info();
        break;
            
    
        }

