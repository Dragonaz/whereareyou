/// @description 
drop_shadow();
if draw_wait==0
	draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(game_font_21);
draw_set_color(c_white);
draw_text(x,y,mytext);

if draw_wait
{
	var dx=room_width/2;
	var dy=room_height/2;
	var string_txt="Waiting for other player...";
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(dx-string_width(string_txt)/2-10,dy-string_height(string_txt)/2-10,dx+string_width(string_txt)/2+10,dy+string_height(string_txt)/2+10,0);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width/2,room_height/2,"Waiting for other player...");
}