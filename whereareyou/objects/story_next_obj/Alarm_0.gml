/// @description
if story_num<story_total_numbers
{
	story_num++;
	var back_id = layer_background_get_id("Background");
	layer_background_change(back_id,story_background[story_num]);
}
else
{
	if draw_wait==0
		alarm_set(2,5); //story move
}