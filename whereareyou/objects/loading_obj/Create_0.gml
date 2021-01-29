/// @description 
mytext="loading..."

//init
randomize();
version_info();

//check playername
secure_open(global.file_json)
var curr_playername=secure_read("player_name","");
if curr_playername==""
{
	global.player_name="player"+string(irandom(9999))
	secure_write("player_name",global.player_name);
}
else
	global.player_name=curr_playername;
secure_save();


alarm_set(0,50);