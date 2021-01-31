// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_finish_story()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	if room==story_room
	{
		global.player_finish_story=1;
		with story_next_obj
		{
			if global.host
			{
				if draw_wait==1
				{
					send_room_goto(island_babayaga_map);
					room_goto_ef(island_babayaga_map);
				}
			}
		}
	}
	
}