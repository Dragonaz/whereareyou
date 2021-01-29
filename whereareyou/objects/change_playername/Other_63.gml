/// @description 
if ds_map_find_value(async_load,"id")==get
{
	if ds_map_find_value(async_load,"status")
	{
		var curr_player_name= ds_map_find_value(async_load,"result");
		if string_length(curr_player_name)>=4 and string_length(curr_player_name)<=15
		{
			global.player_name=curr_player_name;
			secure_open(global.file_json);
			secure_write("player_name",curr_player_name);
			secure_save();
		}
		else
		{
			show_message_async("player name must be longer than 4 chars and shorter than 15 chars.");
		}
	}
}