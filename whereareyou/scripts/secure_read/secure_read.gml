function secure_read(argument0, argument1) {
	key_batata=argument0;
	def_batata=argument1;
	value_batata=ds_map_find_value(map_batata, key_batata);
	if is_undefined(value_batata)
	{
	ds_map_replace(map_batata, key_batata , def_batata);
	return def_batata;
	}
	else
	return value_batata;



}
