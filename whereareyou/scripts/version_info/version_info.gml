// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function version_info()
{

//files infos
global.file_json="user_info.json";

//server infos
global.link_getserverip="https://drakespiritdev.com/downloads/games/whereareyou/server_info/server_ip.txt";
global.link_getserverport="https://drakespiritdev.com/downloads/games/whereareyou/server_info/server_port.txt";

//game settings
global.test_ingame=1;
global.game_spawn_time=100;


//init
global.player_character=0;
global.host=0;
global.session_id=0;
global.session_code="";
for (var i=1;i<=3;i++)
{
	global.client_name[i]="uknown";
	global.client_id[i]=0;
}
global.my_server_id=0;
global.player_finish_story=0;
global.gameover_reason="uknown";


}