// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_info()
{
	var buffer_id=buffer_read(r_buffer,buffer_u8);
	
	if buffer_id==1
		get_create_session();
	else if buffer_id==2
		get_join_session();
	else
	{
		var session=buffer_read(r_buffer,buffer_u16);
		resend_buffer_tosession(session,r_buffer);
	}
	
	//clear buffers
	buffer_delete(r_buffer);
}