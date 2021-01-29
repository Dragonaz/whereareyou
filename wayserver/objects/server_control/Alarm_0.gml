/// @description create server
server_capacity=max_sessions*session_capacity;
server_socket = network_create_server(network_socket_tcp, server_port, server_capacity+5);//+5 for disconnecting users when full
//sheck creation
if server_socket < 0
{
	status_color=c_orange;
	status="failed to create server !";
}
else
{
	status_color=c_green;
	status="server running";
}