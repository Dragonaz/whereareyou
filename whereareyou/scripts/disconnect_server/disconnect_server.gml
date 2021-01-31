// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function disconnect_server(){
	network_destroy(global.my_socket);
	global.host=0;
	global.session_id=0;
	global.session_code="";
	global.player_finish_story=0;
	for (var i=1;i<=3;i++)
	{
		global.client_name[i]="uknown";
		global.client_id[i]=0;
	}
}