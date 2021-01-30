/// @description
if instance_exists(player_obj)
{
	if player_obj.y>y
	depth=player_obj.depth+1;
	else
	depth=player_obj.depth-1;
}
alarm_set(0,irandom_range(5,10));
show_debug_message("test");