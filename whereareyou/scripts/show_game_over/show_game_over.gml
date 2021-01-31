// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_game_over()
{
	global.gameover_reason="You died..";
	send_gameover();
	room_goto_ef(gameover_room);
}