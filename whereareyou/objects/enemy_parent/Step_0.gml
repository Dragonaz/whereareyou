

//move to player
if follow_player and sprite_index!=atack_sprite
{
	mp_potential_step_object(follower_id.x, follower_id.y, enemy_speed, wall_obj)
}
else if sprite_index==atack_sprite
{
	if image_index>=image_number-1
	{
		sprite_index=stand_sprite;
		if instance_exists(player_obj)
		{
			var dis = point_distance(x,y,player_obj.x,player_obj.y);
			if dis<=atack_dis
			{
				effect_create_above(ef_smoke,player_obj.x,player_obj.y,2,c_red);
				controle_obj.player_health-=atack_damage;
				if controle_obj.player_health<=0
					show_game_over();
			}
		}
	}
}