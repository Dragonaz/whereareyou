/// @description 
draw_set_color(status_color);
draw_text(x,y,"status: "+status);
draw_text(x,y+40,"clients: "+string(clients_number)+"/"+string(server_capacity));
draw_text(x,y+80,"active sessions: "+string(active_sessions)+"/"+string(max_sessions));