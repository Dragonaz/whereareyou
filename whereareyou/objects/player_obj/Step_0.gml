/// @description 
//------------------animation--------------------------------------------
//image_angle=direction

//------------------movement---------------------------------------------
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

if hspd!=0 or vspd!=0
{
	if sprite_index!=player_move_sp
		sprite_index=player_move_sp;
}
else
{
	if sprite_index!=player_stand_sp
		sprite_index=player_stand_sp;
}