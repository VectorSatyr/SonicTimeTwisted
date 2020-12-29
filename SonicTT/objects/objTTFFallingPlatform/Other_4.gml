/// @description Reverse (if applicable)
if (sign(image_xscale) == -1)
{
	x -= abs(sprite_width);
	image_xscale = 1;
}