function secure_open(argument0) {
	filename_batata=argument0;
	if file_exists(filename_batata)
	{
		map_batata=ds_map_secure_load(filename_batata);
		if map_batata==-1
		{
			file_delete(filename_batata);
			show_debug_message("file is not json! , file deleted to create a fresh json.");
			map_batata=ds_map_create();
		}
	}
	else
	{
	map_batata=ds_map_create();
	}



}
