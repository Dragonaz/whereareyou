/// @description hunger consume
if instance_exists(player_obj)
{
	if hunger>0
		hunger-=hunger_consume;
	else
	{
		show_game_over();
	}
}
alarm_set(0,hunger_time);