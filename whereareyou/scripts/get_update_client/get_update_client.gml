// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_update_client()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	client_idd=buffer_read(r_buffer,buffer_u16);
	var client_x=buffer_read(r_buffer,buffer_u16);
	var client_y=buffer_read(r_buffer,buffer_u16);
	var client_sprite=buffer_read(r_buffer,buffer_u16);
	
	client_instance=-1;
	if instance_exists(client_net_obj)
		with client_net_obj
		{
			if client_id==other.client_idd
				other.client_instance=id;
		}
	
	if client_instance!=-1
	{
		client_instance.x=client_x;
		client_instance.y=client_y;
		if client_instance.sprite_index!=client_sprite
		client_instance.sprite_index=client_sprite;
	}
	
	
}