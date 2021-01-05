/// @description Track
if (fire)
{
	if (instance_exists(platformId))
	{
		move_towards_point(
			platformId.x + (platformId.sprite_width * 0.5), 
			platformId.y, track_speed
		);
	}

	switch (state)
	{
	case "approaching":
		if (timeline_position >= timeline_max_moment(timeline_index))
		{
			state = "tracking";
		}
		break;

	case "tracking":
		image_xscale += growth_rate;
		image_yscale += growth_rate;
	    if (
			image_xscale >= max_scale and (
				instance_position(x, y, platformId) or 
				not instance_exists(platformId)
			)
		)
		{
			with (platformId) event_user(0);
	        with (objGalanikSmall)
			{
				if (firingCount <= 5) alarm[0] = 65;
	        }
			state = "fading";
			remove = 2;
			event_user(1); // fade
	    }
		break;

	case "fading":
		if (timeline_position >= timeline_max_moment(timeline_index))
		{
			image_alpha = max(image_alpha - fade_rate, 0);
			if (image_alpha <= 0) instance_destroy();
		}
		break;
	}
}