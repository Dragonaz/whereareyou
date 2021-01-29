/// @description 
/// @description 
    
     var type = ds_map_find_value(async_load, "type");
    switch(type)
        {            
        case network_type_data:
				r_buffer=ds_map_find_value(async_load, "buffer");
				r_socket=ds_map_find_value(async_load, "id");
				get_info();
        break;
        }

