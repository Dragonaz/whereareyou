// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_gameover()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	global.gameover_reason="Your partner died..";
	room_goto_ef(gameover_room);
	
}