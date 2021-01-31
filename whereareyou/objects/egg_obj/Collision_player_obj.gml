/// @description 

if spawn==1
{
	effect_create_above(ef_ring,x,y,3,c_green);
	controle_obj.hunger+=10;
	if controle_obj.hunger>100
		controle_obj.hunger=100;	
	instance_destroy(id);
}
else
alarm_set(1,5);//spawn time

