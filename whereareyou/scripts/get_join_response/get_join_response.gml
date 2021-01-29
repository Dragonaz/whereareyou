// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_join_response()
{
	var response_id=buffer_read(r_buffer,buffer_u8);
	if response_id==3
	{
		global.session_id=buffer_read(r_buffer,buffer_u8);
		global.my_server_id=buffer_read(r_buffer,buffer_u16);
		room_goto(lobby_room);
	}
	else if response_id==2
	{
		show_message_async("Sorry server is full, try again later.");
		disconnect_server();
		room_goto_ef(play_room);
	}
	else if response_id==4
	{
		show_message_async("session is full!");
		disconnect_server();
		room_goto_ef(play_room);
	}
	else if response_id==5
	{
		show_message_async("session not found!");	
		disconnect_server();
		room_goto_ef(play_room);
	} 


}