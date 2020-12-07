/// @description Thaw
frozen = false;
if (timeline_index != -1) timeline_running = true;
with (instance_create_depth(x - 12, y - 8, depth - 1, objShieldIceBlockDebris))
{
	hspeed = -2;
	vspeed = -4;
}
with (instance_create_depth(x + 12, y - 8, depth - 1, objShieldIceBlockDebris))
{
	hspeed = 2;
	vspeed = -4;
	image_index = 1;
}
with (instance_create_depth(x - 12, y + 8, depth - 1, objShieldIceBlockDebris))
{
	hspeed = -2;
	vspeed = -2;
	image_index = 2;
}
with (instance_create_depth(x + 12, y + 8, depth - 1, objShieldIceBlockDebris))
{
	hspeed = 2;
	vspeed = -2;
	image_index = 3;
}