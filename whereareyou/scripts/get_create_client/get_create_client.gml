// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_create_client()
{
	buffer_read(r_buffer,buffer_u16);//session id
	//----------------------------------------------------
	
	var client_idd=buffer_read(r_buffer,buffer_u16);
	var client_x=buffer_read(r_buffer,buffer_u16);
	var client_y=buffer_read(r_buffer,buffer_u16);
	var client_sprite=buffer_read(r_buffer,buffer_u16);
	
	var client_instance =instance_create_layer(x,y,"instances",client_net_obj);
	client_instance.client_id=client_idd;
	client_instance.x=client_x;
	client_instance.y=client_y;
	client_instance.sprite_index=client_sprite;
	
	
}