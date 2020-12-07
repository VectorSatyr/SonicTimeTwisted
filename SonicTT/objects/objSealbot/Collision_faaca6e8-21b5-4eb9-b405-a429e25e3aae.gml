/// @description Force turn
if (state != "turning")
{
	state = "turning";
	x_speed = 0;
	wall_sign = 0;
	cliff_sign = 0;
	timer = 10;
}