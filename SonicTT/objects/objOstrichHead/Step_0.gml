if (not frozen)
{
	y += y_speed;
	--timer;
	if (timer <= 0)
	{
		timer = 18;
		with (instance_create_depth(
			x, ystart + debris_oy, depth - 2, objOstrichDibris
		))
		{
		    image_index = 1;
		    direction = 60;
		}
		with (instance_create_depth(
			x, ystart + debris_oy, depth - 2, objOstrichDibris
		))
		{
		    image_index = 0;
		    direction = 120;
		}
	}
	switch (state)
	{
	case "rising":
		if (y < ystart + neck_oy)
		{
			y_speed = 1;
			state = "receding";
		}
		break;

	case "receding":
		if (y >= ystart)
		{
			with (owner)
			{
				state = "emerging";
				event_user(4);
			}
			instance_destroy();
		}
		break;
	}
}