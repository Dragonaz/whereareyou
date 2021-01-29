/// @description 
my_playername="waiting..";
image_blend=c_gray;

if global.host==0
{
	image_blend=c_white;
	global.player_character=2;
	my_playername=global.player_name;
	send_player_info();
}