/// @description 
if image_index>=image_number-1
{
	if place_meeting(x,y,player_obj)
	{
		controle_obj.player_health--;
		if controle_obj.player_health==0
		show_game_over();
	}
	image_index=0;
}