/// @description 

//server options
server_port=8463;
max_sessions=2;
session_capacity=2;


//init handling data
clients_number=0;
active_sessions=0;
server_capacity=0;
client_ids=0;
clients_sockets=ds_list_create();
for ( var i=1 ; i<=max_sessions ; i++)
{
	session_clients[i]=ds_list_create();
	session_codes[i]=string(irandom_range(1000,9999))+string(i);
}


//init
status="creating server";
status_color=c_orange;
alarm_set(0,20);//create server


//init vars
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(server_font);