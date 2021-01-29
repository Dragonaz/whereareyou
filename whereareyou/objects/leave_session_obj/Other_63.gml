/// @description
if ds_map_find_value(async_load,"id")==qst
{
	if ds_map_find_value(async_load,"status")
	{
		disconnect_server();
		room_goto_ef(play_room);
	}
}
