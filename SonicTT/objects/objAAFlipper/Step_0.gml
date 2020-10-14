/// @description Control
with (player_id)
{
	// roll off
	xspeed = other.roll_speed;
	if (not player_movement_ground())
	{
		other.player_id = noone;
		break;
	}

	// detach if not on flipper
	if (terrain_id != other.id)
	{
		if (instance_exists(terrain_id))
		{
			player_is_rolling();
		}
		else
		{
			player_is_falling();
		}
		other.player_id = noone;
		break;
	}

	// fall when out of bounds
	var xscale = sign(other.image_xscale);
	if ((xscale == -1 and x + offset_x < other.bbox_left) or
		(xscale == 1 and x - offset_x > other.bbox_right))
	{
		player_is_falling();
		other.player_id = noone;
		break;
	}

	// fling
	if (input_check_pressed(cACTION))
	{
		state = player_state_fall;
		spinning = false;
		rolling_jump = false;
		jump_action = true;
		xspeed = (x - other.x) * other.flip_xspeed;
		yspeed = other.flip_yspeed;
		player_in_air();

		audio_play_sound(sndFlipper, 1, false);

		other.timeline_running = true;
		other.timeline_position = 0;
		other.player_id = noone;
		break;
	}
}