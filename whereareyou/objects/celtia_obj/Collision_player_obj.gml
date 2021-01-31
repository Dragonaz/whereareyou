/// @description 


if controle_obj.player_health<5
{
	effect_create_above(ef_ring,x,y,3,c_red);
	controle_obj.player_health+=1;
	instance_destroy(id);
}