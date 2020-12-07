/// @description Collide (and animate)
if (frozen)
{
	freeze_ox = (alarm[0] > 0 and alarm[0] < 45) ? (-1 + (((90 - alarm[0]) div 4) mod 2) * 2) : 0;
}
else
{
	image_xscale = facing_sign;

	wall_sign = 0;
	cliff_sign = 0;

	x += x_speed;

	if (collision_ray(x_radius, 0, 0, objSolid))
	{
		wall_sign = sign(x_speed);
		x -= x_speed;
	}
	else
	{
		while (collision_box(x_radius, y_radius, 0, objSolid)) --y;
		for (var oy = 0; oy < y_radius * 2; ++oy)
		{
			if (collision_ray(x_radius, y_radius + 1 + oy, 0, objSolid))
			{
				y += oy;
				break;
			}
		}
		if (oy >= y_radius * 2)
		{
			cliff_sign = sign(x_speed);
			x -= x_speed;
		}
	}
}