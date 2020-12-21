/// @description 
if (not frozen)
{
	x += x_speed;
	if (x > xstart + span or x < xstart - span)
	{
		facing_sign = -facing_sign;
		x_speed = -x_speed;
	}
}
--trail_timer;
if (trail_timer <= 0)
{
	trail_timer = 20;
	instance_create_depth(x, y + trail_oy, -10, objSnailTrail);
}