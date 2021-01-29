// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_create_response()
{
	if global.host
	{
		buffer=buffer_create(1,buffer_grow,1);
		buffer_write(buffer,buffer_u8,1);
		send_buffer();
		buffer_delete(buffer);
	}
	else
	{
		buffer=buffer_create(1,buffer_grow,1);
		buffer_write(buffer,buffer_u8,2);
		buffer_write(buffer,buffer_string,global.session_code);
		send_buffer();
		buffer_delete(buffer);
	}

}