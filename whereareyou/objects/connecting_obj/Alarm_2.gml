/// @description connect to server
mytext="connecting to server...";

global.my_socket = network_create_socket(network_socket_tcp);
var connection_sheck = network_connect(global.my_socket, server_ip, server_port);
if connection_sheck<0
{
	disconnect_server();
	room_goto_ef(play_room);
	show_message_async("Unable to connect to server.");
	mytext="failed connecting to server!"
}
else
{
	mytext="waiting for server answer.."
}
