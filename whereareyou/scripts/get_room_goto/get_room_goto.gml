// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_room_goto()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	var room_id=buffer_read(r_buffer,buffer_u16);
	
	room_goto_ef(room_id);
}