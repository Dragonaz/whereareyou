/// @description
my_playername="waiting..";
image_blend=c_gray;

if global.host
{
	image_blend=c_white;
	global.player_character=1;
	my_playername=global.player_name;
}