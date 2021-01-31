/// @description hunger consume
if instance_exists(player_obj)
{
	if hunger>0
		hunger-=hunger_consume;
	if hunger<0
		hunger=0;
}
alarm_set(0,hunger_time);