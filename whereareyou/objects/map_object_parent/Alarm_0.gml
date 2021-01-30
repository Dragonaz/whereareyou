/// @description
if instance_exists(player_obj)
{
	if player_obj.y>y
	depth=player_obj.depth+org_depth;
	else
	depth=player_obj.depth-org_depth;
}
alarm_set(0,irandom_range(5,10));