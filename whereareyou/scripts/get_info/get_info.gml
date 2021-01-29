// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_info()
{
	var buffer_id=buffer_read(r_buffer,buffer_u8);	
	switch (buffer_id)
	{
		case 1:
			get_create_response();
		break;
		
		case 2:
			get_join_response();
		break;
		
		case 3:
			get_session_code();
		break;
		
		case 4:
			get_player_info();
		break;
		
		case 5:
			get_room_goto();
		break;
		
		case 6:
			get_create_client();
		break;
		
		case 7:
			get_update_client();
		break;
		
		case 8:
			get_delete_client();
		break;
	}
	//clear buffers 
	buffer_delete(r_buffer);
}