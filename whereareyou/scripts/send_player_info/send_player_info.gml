// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function send_player_info(){
	
	buffer=buffer_create(1,buffer_grow,1);
	buffer_write(buffer,buffer_u8,4);//BUFFER ID   <-------
	buffer_write(buffer,buffer_u16,global.session_id);
	
	
	buffer_write(buffer,buffer_string,global.player_name);
	buffer_write(buffer,buffer_u16,global.my_server_id);
	
	send_buffer();
	buffer_delete(buffer);

}