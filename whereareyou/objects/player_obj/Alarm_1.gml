/// @description atack damage
			if atack==1
			{
				atack=0;
				with enemy_parent
				{
					if point_distance(x,y,other.x,other.y)<=other.player_atack_dis
					{
						effect_create_above(ef_smokeup,x,y,2,c_gray);
						other.player_atack_times--;
						enemy_health-=other.player_atack_damage;
						if enemy_health<=0
							instance_destroy(id);
					}
				}
			}