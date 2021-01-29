// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resend_buffer_tosession(session_id,buffer)
{

	var buffer_size=buffer_get_size(buffer);
	for (var i=0;i<ds_list_size(session_clients[session_id]);i++)
	{
		var socket=ds_list_find_value(session_clients[session_id],i);
		if socket!=r_socket
			network_send_packet(socket, buffer, buffer_size);
	}
}