/// @description 
network_destroy(server_socket);
ds_list_destroy(clients_sockets);
for ( var i=1 ; i<=max_sessions ; i++)
ds_list_destroy(session_clients[i]);

show_debug_message("**server: destroyed socket and ds lists**");