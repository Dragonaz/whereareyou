/// @description open door

if ds_list_size(toucher.keys)>0
{
	var check= ds_list_find_index(toucher.keys,my_code);
	if check!=-1
	{
		show_debug_message("player has key, opening..");
		ds_list_delete(toucher.keys,check);
		opened=2;
		sprite_index=door_open_sp;
	}
	else
		show_debug_message("didnt found correct key");
}
else
	show_debug_message("player dont have any key");