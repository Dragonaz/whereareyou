/// @description

if ds_map_find_value(async_load, "id") == post
{
    if ds_map_find_value(async_load, "status") == 0
    {
        server_ip = ds_map_find_value(async_load, "result");
		if string_count("|start|",server_ip)>0
		{
			var end_pos=string_pos("|end|",server_ip);
			var count=end_pos-8;
			server_ip=string_copy(server_ip,8,count);
			alarm_set(1,5);//get server port
		}
		else
		{
			show_message_async("Cant get server id!");
			room_goto_ef(play_room);
		}
    }
    else
    {
		show_message_async("Cant get server id!");
		room_goto_ef(play_room);
    }
}


if ds_map_find_value(async_load, "id") == post2
{
    if ds_map_find_value(async_load, "status") == 0
    {
        server_port = ds_map_find_value(async_load, "result");
		if string_count("|start|",server_port)>0
		{
			var end_pos=string_pos("|end|",server_port);
			var count=end_pos-8;
			server_port=string_copy(server_port,8,count);
			alarm_set(2,5);//connect to server
		}
		else
		{
			show_message_async("Cant get server port!");
			room_goto_ef(play_room);
		}
    }
    else
    {
        show_message_async("Cant get server port!");
		room_goto_ef(play_room);
    }
}