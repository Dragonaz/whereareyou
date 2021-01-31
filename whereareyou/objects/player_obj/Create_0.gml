/// @description

show_message_async("I need to find my partner");
show_message_async("I need to eat and becareful from enemys.");


//player power
player_walk_speed=8;
player_atack_dis=100;
player_atack_damage=5;
player_atack_times=0;

//sprites
stand_down_sprite=player_stand_sp;
stand_up_sprite=player_standup_sp;
stand_right_sprite=player_standright_sp;
move_down_sprite=player_move_sp;
move_up_sprite=player_moveup_sp;
move_right_sprite=player_moveright_sp;
atack_sprite=atack_sp;


//init
atack=0;
keys=ds_list_create();
player_speed=player_walk_speed;
last_sprite=0;


//networking
if global.test_ingame==0
{
	client_update_rate=irandom_range(5,10);
	send_create_client(global.my_server_id);
	alarm_set(0,client_update_rate);
}