// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_playagain()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	if room==gameover_room
	{
		if play_again_obj.me_play_again
		{
			//send_playagain();
			room_goto_ef(island_babayaga_map);
		}
		else
		{
			play_again_obj.other_play_again=1;
		}
	}
}