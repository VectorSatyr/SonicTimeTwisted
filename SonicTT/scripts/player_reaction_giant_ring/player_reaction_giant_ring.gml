/// player_reaction_giant_ring(local_id)
var local_id = argument0;

var warping = false;

with (objProgram)
{
	// remember this
	ds_list_add((in_past) ? ring_past_list : ring_future_list, local_id.tag);

	// current special stage number
	var level_id = (in_past) ? special_past_current_level : special_future_current_level;
	if (level_id < 7)
	{
		// enter next special stage
		temp_spawn_tag = local_id.tag;
		temp_spawn_time = objLevel.timer;
		temp_shield = other.shield_type;
		var level = ds_list_find_value(
			(in_past) ? special_past_list : special_future_list, level_id
		);
		transition_to(objLevelToSS, level, 20);
		global.special_level_music_played = false;
		warping = true;
	}
}

if (warping)
{
	// dissapear
	state = player_state_standby;
	xspeed = 0;
	yspeed = 0;
	visible = false;
	with (shield) visible = false;
}
else
{
	// gain 50 rings instead
	player_get_rings(50);
}

with (local_id)
{
	reaction_script = noone;
	sprite_index = sprGiantRingDisapear;
	image_index = 0;
	image_speed = 1.5;
}

audio_play_sound(sndEnterSpecialStage, 1, false);

return false; // 'soft' collision