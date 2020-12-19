/// @description Hover
if (not frozen and mode > 0)
{
	++hover_angle;
	var offset = hover_angle / hover_speed;
	switch (mode)
	{
    case 1: x = floor(xstart + (cos(offset) * hover_distance)); break;
    case 2: x = floor(xstart + (sin(offset) * hover_distance)); break;
    case 3: y = floor(ystart + (cos(offset) * hover_distance)); break;
    case 4: y = floor(ystart + (sin(offset) * hover_distance)); break;
	}
}