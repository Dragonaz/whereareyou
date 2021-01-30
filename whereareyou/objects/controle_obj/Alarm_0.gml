/// @description
if instance_exists(player_obj)
{
	if hunger>0
		hunger-=5
}
alarm_set(0,hunger_time);