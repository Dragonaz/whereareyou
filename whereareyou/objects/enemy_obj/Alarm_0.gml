/// @description

//check and get nearest player
if instance_exists(player_obj)
{
	var nearest_player=instance_nearest(x,y,player_obj);
	var dis = point_distance(x,y,player_obj.x,player_obj.y);
	if dis<=vision_dis and dis>=nearest_player.sprite_height+10
	{
		follow_player=1;
		follower_id=nearest_player;
	}
	else
	{
		follow_player=0;
	}
}

alarm_set(0,check_rate);