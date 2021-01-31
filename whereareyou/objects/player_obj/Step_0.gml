/// @description 
//------------------animation--------------------------------------------
//image_angle=direction

//------------------movement---------------------------------------------
if atack==0
{
	var collision_object=wall_obj;
	var hspd = (-keyboard_check(81) + keyboard_check(68)) * player_speed;
	var vspd = (-keyboard_check(90) + keyboard_check(83)) * player_speed;

	if (place_meeting(x + hspd, y,collision_object) ){
	    while (!place_meeting(x + sign(hspd), y, collision_object))
	        x += sign(hspd);
	    hspd = 0;
	}
	if vspd==0
	x += hspd;
	else
	x += hspd/1.4;

	if (place_meeting(x, y + vspd, collision_object) ){
	    while (!place_meeting(x, y + sign(vspd), collision_object))
	        y += sign(vspd);
	    vspd = 0;
	}
	if hspd==0
	y += vspd;
	else
	y += vspd/1.4;

	if vspd!=0
	{
		if vspd>0
		{
			if sprite_index!=move_down_sprite
			sprite_index=move_down_sprite;
		}
		else
		{
			if sprite_index!=move_up_sprite
			sprite_index=move_up_sprite;
		}
	}
	else if hspd!=0
	{
		if sprite_index!=move_right_sprite
			sprite_index=move_right_sprite;
		if hspd>0
		{
			if image_xscale!=-1
				image_xscale=-1;
		}
		else
		{
			if image_xscale!=1
				image_xscale=1;
		}
	}

	if hspd==0 and vspd==0
	{
		if sprite_index==move_right_sprite
				sprite_index=stand_right_sprite;
		else if sprite_index==move_up_sprite
			sprite_index=stand_up_sprite;
		else if sprite_index==move_down_sprite
			sprite_index=stand_down_sprite;
	}
}

//atack
if keyboard_check(32) //space
{
	if atack==0
	{
		atack=1;
		last_sprite=sprite_index;
		sprite_index=atack_sprite;
		with enemy_parent
		{
			if point_distance(x,y,other.x,other.y)<=other.player_atack_dis
			{
				effect_create_above(ef_smokeup,x,y,2,c_gray);
				enemy_health-=other.player_atack_damage;
				if enemy_health<=0
					instance_destroy(id);
			}
		}
	}
}
if sprite_index==atack_sprite
{
	if image_index>=image_number-1
	{
		sprite_index=last_sprite;
		atack=0;
	}
}