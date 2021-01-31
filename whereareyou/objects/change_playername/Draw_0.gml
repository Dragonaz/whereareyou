/// @description 


draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(game_font_21);

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(x-sprite_width/2+10,y,x+sprite_width/2-10,y-sprite_height/2-60,0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(x,y-sprite_height/2-20,global.player_name);

draw_self();


draw_set_color(c_white);
draw_text(x,y,mytext);