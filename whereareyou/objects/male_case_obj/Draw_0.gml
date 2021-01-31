/// @description 
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(x-sprite_width/2,y+sprite_height/2,x+sprite_width/2,y+sprite_height/2+70,0);
draw_set_alpha(1);

draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x,y+sprite_height/2+10,my_playername);

draw_self();