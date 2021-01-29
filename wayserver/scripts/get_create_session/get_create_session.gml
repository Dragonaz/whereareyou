// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_create_session(){

	if active_sessions<max_sessions and clients_number<=server_capacity
	{
		var found=0;
		for ( var i=1 ; i<=max_sessions and found==0 ; i++)
		{
			if ds_list_size(session_clients[i]) ==0
			{
				found=1;
				ds_list_add(session_clients[i],r_socket);
				var session_code=session_codes[i];
				var session_id=i;
				active_sessions++;
			}
		}
		if found
		{
			buffer=buffer_create(1,buffer_grow,1);

			buffer_write(buffer,buffer_u8,3);
			buffer_write(buffer,buffer_u8,3);//3 means found session
			
			buffer_write(buffer,buffer_string,session_code);
			buffer_write(buffer,buffer_u8,session_id);//session id
			client_ids++;
			buffer_write(buffer,buffer_u16,client_ids);//client id

			send_buffer_tosocket(r_socket);
			buffer_delete(buffer);
		}
		else
		{
			buffer=buffer_create(1,buffer_grow,1);

			buffer_write(buffer,buffer_u8,3);
			buffer_write(buffer,buffer_u8,2);//2 means server full

			send_buffer_tosocket(r_socket);
			buffer_delete(buffer);
		}
	}
	else//server full
	{
		buffer=buffer_create(1,buffer_grow,1);

		buffer_write(buffer,buffer_u8,3);
		buffer_write(buffer,buffer_u8,2);//2 means server full

		send_buffer_tosocket(r_socket);
		buffer_delete(buffer);
	}
	
	
}