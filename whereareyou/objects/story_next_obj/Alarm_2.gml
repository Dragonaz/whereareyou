/// @description story move

if global.player_finish_story
	{
		if global.host
		{
			send_room_goto(island_babayaga_map);
			room_goto_ef(island_babayaga_map);
		}
	}
	else
	{
		if global.host
		{
			draw_wait=1;
		}
		else
		{
			draw_wait=1;
			send_finish_story();
		}
	}
