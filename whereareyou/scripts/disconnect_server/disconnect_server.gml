// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function disconnect_server(){
	network_destroy(global.my_socket);
	global.host=0;
	global.session_id=0;
	global.session_code="";
}