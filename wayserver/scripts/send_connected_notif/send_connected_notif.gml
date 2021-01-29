// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function send_connected_notif(socket){

	buffer=buffer_create(1,buffer_grow,1);

	buffer_write(buffer,buffer_u8,1);

	send_buffer_tosocket(socket);
	buffer_delete(buffer);
	
}