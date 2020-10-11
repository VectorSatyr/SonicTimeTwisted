/// @description Control
var pole_dir;
with (player_id)
{
	// rotate around post
	pole_dir = angle_wrap(timeline_position * 30);
	x = other.x + dsin(pole_dir) * other.radius * facing;

	// jumping
	if (input_check_pressed(cACTION))
	{
		// reset time post
		other.alarm[0] = other.default_reset_time;
		other.player_id = noone;

		// detach
		player_is_jumping();

		x = other.x;
		xspeed = other.default_cancel_speed * facing;
		camera.alarm[0] = -1;

		animation_new = "brake";
		timeline_speed = 1;	
		depth = 0;
		exit;
	}

	// cancelling
	if (input_axis_x() == -facing)
	{
		// reset time post
		other.alarm[0] = other.default_reset_time;
		other.player_id = noone;

		// detach
		player_is_running();

		x = other.x;
		xspeed = other.default_cancel_speed * facing;
		camera.alarm[0] = -1;

		animation_new = "brake";
		timeline_speed = 1;	
		depth = 0;
		exit;
	}

	// activate on end of animation
	if (timeline_position >= 12)
	{
		// reset time post
		other.alarm[0] = other.time_travel_reset_time;
		other.player_id = noone;

		// confirm time travel
		with (objProgram)
		{
			spawn_tag = other.tag;
			spawn_time = objLevel.timer;
			time_traveling = facing;
			audio_play_sound((in_past) ? sndChantFuture : sndChantPast, 1, false);
		}

		// time travel
		camera.alarm[0] = 128;
		player_is_exiting();
		exit;
	}
}