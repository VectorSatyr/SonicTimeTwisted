/// @description Fly
if (not frozen)
{
	x += x_speed;
	switch (state)
	{
	case "advancing":
		var distance = 0;
		with (instance_nearest(x, y, objPlayer)) distance = x - other.x;
		if (abs(distance) > patrol_x and sign(x_speed) != sign(distance))
		{
			turning_sign = -sign(x_speed);
			state = "turning";
			timer = 6;
			event_user(1);
		}
		break;

	case "turning":
		x_speed += deceleration * turning_sign;
		if (timer > 0)
		{
			--timer
			if (timer <= 0) event_user(0);
		}
		if (sign(x_speed) == turning_sign and abs(x_speed) >= max_speed)
		{
			x_speed = max_speed * turning_sign;
			turning_sign = 0;
			state = "advancing";
		}
		break;
	}
	if (
		past_version and objLevel.started and 
		not audio_is_playing(sndPropeller)
	)
	{
		propeller_sound = audio_play_sound(sndPropeller, 4, 0);
	}
}