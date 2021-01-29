// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_player_info()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	global.client_name[1]=buffer_read(r_buffer,buffer_string);
	global.client_id[1]=buffer_read(r_buffer,buffer_u16);
	if room==lobby_room
	{
		if global.host
		{
			female_case_obj.my_playername=global.client_name[1];
			female_case_obj.image_blend=c_white;
			send_player_info();
		}
		else
		{
			male_case_obj.my_playername=global.client_name[1];
			male_case_obj.image_blend=c_white;
		}
	}
}