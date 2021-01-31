/// @description 


if me_play_again==0
{
	if other_play_again
	{
		send_playagain();
		room_goto_ef(island_babayaga_map);
	}
	else
	{
		play_again_obj.mytext="waiting for other player...";
		me_play_again=1;
		send_playagain();
	}
}