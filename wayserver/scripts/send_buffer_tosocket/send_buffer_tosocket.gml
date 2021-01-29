// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function send_buffer_tosocket(socket){
	var buffer_size=buffer_get_size(buffer);
	network_send_packet(socket, buffer, buffer_size);
}