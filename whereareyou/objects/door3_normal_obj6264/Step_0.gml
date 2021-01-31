/// @description 
if opened==2
{
	if image_index>=image_number
	{
		opened=3;
		instance_destroy(my_wall);
		instance_destroy(my_wall2);
		sprite_index=door_opened_sprite;
	}
}