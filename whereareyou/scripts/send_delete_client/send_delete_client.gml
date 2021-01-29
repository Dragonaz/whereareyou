// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function send_delete_client(client_id){
	
	buffer=buffer_create(1,buffer_grow,1);
	buffer_write(buffer,buffer_u8,8);//BUFFER ID   <-------
	buffer_write(buffer,buffer_u16,global.session_id);
	
	buffer_write(buffer,buffer_u16,client_id);
	
	send_buffer();
	buffer_delete(buffer);

}