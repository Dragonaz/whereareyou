/// @description


//player power
player_walk_speed=8;
player_sprint_speed=10;
player_health=100;


//init
player_speed=player_walk_speed;

//networking
client_update_rate=irandom_range(5,10);
send_create_client(global.my_server_id);
alarm_set(0,client_update_rate);