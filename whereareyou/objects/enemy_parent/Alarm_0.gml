/// @description AI

//check and get nearest player
if sprite_index!=atack_sprite
{
	if instance_exists(player_obj)
	{
		var nearest_player=instance_nearest(x,y,player_obj);
		var dis = point_distance(x,y,player_obj.x,player_obj.y);
		if dis<=vision_dis and dis>atack_dis
		{
			follow_player=1;
			follower_id=nearest_player;
			sprite_index=run_sprite;
		}
		else if follow_player
		{
			sprite_index=stand_sprite;
			follow_player=0;
			if dis<=atack_dis
				alarm_set(2,atack_rate);
		}
	
		//fix direction
		if follow_player
		{
			if x<nearest_player.x
				image_xscale=1;
			else
				image_xscale=-1;
		}
		
	}
}

alarm_set(0,check_rate);