// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_delete_client()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	client_idd=buffer_read(r_buffer,buffer_u16);
	
	if instance_exists(client_net_obj)
		with client_net_obj
		{
			if client_id==other.client_idd
				instance_destroy(id);
		}

	
}