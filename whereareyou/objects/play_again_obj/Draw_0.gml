/// @description
drop_shadow();
if me_play_again==0
draw_self();

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(game_font_21);
draw_set_color(c_white);
draw_text(x,y,mytext);


draw_text(x,y-500,"GAME OVER: "+global.gameover_reason);