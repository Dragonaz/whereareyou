/// @description atack

if sprite_index!=atack_sprite
{
	if instance_exists(player_obj)
	{
		var dis = point_distance(x,y,player_obj.x,player_obj.y);
		if dis<=atack_dis
		{
			sprite_index=atack_sprite;
		}
	}
}
alarm_set(2,atack_rate);
