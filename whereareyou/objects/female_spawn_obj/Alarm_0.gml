/// @description 
if global.host==0
{
	var female_obj=instance_create_layer(x,y,"instances",player_obj);
	female_obj.sprite_index=female_stand_sp;
	female_obj.stand_down_sprite=female_stand_sp;
	female_obj.stand_up_sprite=female_standup_sp;
	female_obj.stand_right_sprite=female_standright_sp;
	female_obj.move_down_sprite=female_walk_sp;
	female_obj.move_up_sprite=female_walkup_sp;
	female_obj.move_right_sprite=female_walkright_sp;
}