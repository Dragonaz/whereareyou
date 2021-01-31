/// @description 

//rectangle
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(50,50,430,220,0);
draw_set_alpha(1);

//picture
if global.host
	draw_sprite_ext(male_case_sp,0,100,100,0.4,0.4,0,c_white,1);
else
	draw_sprite_ext(female_case_sp,0,100,100,0.4,0.4,0,c_white,1);

//food
draw_set_color(c_orange);
draw_rectangle(170,120,190+150,150,0);
draw_set_color(c_green);
draw_rectangle(170,120,190+((hunger/100)*150),150,0);
draw_set_color(c_black);
draw_rectangle(170,120,190+150,150,1);
draw_sprite_ext(liblebi_sp,0,190+150+40,130,0.5,0.5,0,c_white,1);

//health
var dx=190
for (var i=1;i<=5;i++)
{
	draw_sprite(heart_empty_sp,0,dx,90);
	if i<=player_health
		draw_sprite(heart_sp,0,dx,90);
	dx+=50;
}

//player name
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(70,165,global.player_name);

//stick
if instance_exists(player_obj) and player_obj.player_atack_times>0
draw_sprite_ext(stick_sp,0,70+string_width(global.player_name)+50,195,0.7,0.7,0,c_white,1);


