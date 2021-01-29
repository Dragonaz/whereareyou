/// @description 
draw_self();

draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(game_font_21);
draw_set_color(c_white);
draw_text(x,y,mytext);

draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_set_font(game_font_21);
draw_set_color(c_black);
draw_text(x-sprite_width/2,y-sprite_height/2-5,global.player_name);