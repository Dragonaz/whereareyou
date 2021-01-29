/// @description 
if ds_map_find_value(async_load,"id")==get
{
	if ds_map_find_value(async_load,"status")
	{
		global.session_code=ds_map_find_value(async_load,"result");
		global.host=0;
		room_goto_ef(connecting_room);
	}
}