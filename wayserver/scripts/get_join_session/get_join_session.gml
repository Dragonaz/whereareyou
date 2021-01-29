// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_join_session(){

	var session_code=buffer_read(r_buffer,buffer_string);

	if clients_number<=server_capacity
	{
		var found=0;
		for ( var i=1 ; i<=max_sessions and found==0 ; i++)
		{
			if session_codes[i] == session_code
			{
				found=1;
				{
					if ds_list_size(session_clients[i])<2
					{
						ds_list_add(session_clients[i],r_socket);
						buffer=buffer_create(1,buffer_grow,1);
						buffer_write(buffer,buffer_u8,2);
						buffer_write(buffer,buffer_u8,3);//3 means found session
						buffer_write(buffer,buffer_u8,i);//session id
						client_ids++;
						buffer_write(buffer,buffer_u16,client_ids);//client id
						send_buffer_tosocket(r_socket);
						buffer_delete(buffer);
					}
					else
					{
						buffer=buffer_create(1,buffer_grow,1);
						buffer_write(buffer,buffer_u8,2);
						buffer_write(buffer,buffer_u8,4);//4 means session full
						send_buffer_tosocket(r_socket);
						buffer_delete(buffer);
					}
				}
			}
		}
		if found==0
		{
			buffer=buffer_create(1,buffer_grow,1);
			buffer_write(buffer,buffer_u8,2);
			buffer_write(buffer,buffer_u8,5);//5 means session not found
			send_buffer_tosocket(r_socket);
			buffer_delete(buffer);
		}
	}
	else//server full
	{
		buffer=buffer_create(1,buffer_grow,1);

		buffer_write(buffer,buffer_u8,2);
		buffer_write(buffer,buffer_u8,2);//2 means server full

		send_buffer_tosocket(r_socket);
		buffer_delete(buffer);
	}
	
	
}