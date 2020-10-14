/// @description Stretch
if (image_xscale < 1)
{
	image_xscale += growth_speed;
	x -= 2.5;
}
if (image_yscale < 1)
{
	image_yscale += growth_speed;
}