/// @description

//player power
player_walk_speed=8;
player_sprint_speed=10;
player_health=100;

//sprites
stand_down_sprite=player_stand_sp;
stand_up_sprite=player_standup_sp;
stand_right_sprite=player_standright_sp;
move_down_sprite=player_move_sp;
move_up_sprite=player_moveup_sp;
move_right_sprite=player_moveright_sp;


//init
player_speed=player_walk_speed;


//networking
if global.test_ingame==0
{
	client_update_rate=irandom_range(5,10);
	send_create_client(global.my_server_id);
	alarm_set(0,client_update_rate);
}