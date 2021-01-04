/// @description Initialize
event_inherited();
image_index = ((objProgram.in_past) ? 0 : 2) + ((reverse) ? 1 : 0);
image_speed = 0;
if (reverse)
{
	x -= abs(sprite_width);
	image_xscale = abs(image_xscale);
}