/// @description Stalk
switch (state)
{
case "watching":
	if (not frozen)
	{
		var in_range = false;
		var x1 = x - patrol_range_x;
		var y1 = y - patrol_range_y;
		var x2 = x + patrol_range_x;
		var y2 = y + patrol_range_y;
		with (instance_nearest(x, y, objPlayer))
		{
			if (point_in_rectangle(x, y, x1, y1, x2, y2))
			{
				in_range = true;
				other.image_xscale = sign(x - other.x);
				break;
			}
		}
		if (in_range)
		{
			state = "ready";
			timer = 20;
		}
	}
	break;

case "ready":
	if (not frozen)
	{
		--timer;
		if (timer <= 0)
		{
			image_index = 1;
			state = "pouncing";
			timer = 0;
			var dir = (image_xscale == -1) ? 120 : 60;
			x_speed = lengthdir_x(6, dir);
			y_speed = lengthdir_y(6, dir);
			remove = 2;
		}
	}
	break;

case "pouncing":
	x += x_speed;
	y += y_speed;
	y_speed += gravity_speed;
	break;
}