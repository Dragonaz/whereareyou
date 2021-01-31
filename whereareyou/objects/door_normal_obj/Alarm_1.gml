/// @description init
my_code=1;

//init
my_wall=instance_create_layer(x-sprite_get_width(wall_sp),y-sprite_get_height(wall_sp)/2,"invisible_objects",wall_obj);
my_wall2=instance_create_layer(x,y-sprite_get_height(wall_sp)/2,"invisible_objects",wall_obj);
opened=0;
toucher=noone;

door_open_sprite=door_open_sp;
door_opened_sprite=door_opened_sp;
