/// @description Overwhelm
if (not frozen)
{
	switch (state)
	{
	case "resting":
		if (
			timeline_index == animBubblesCalm and 
			timeline_position >= timeline_max_moment(timeline_index)
		)
		{
			with (region) event_user(1);
			audio_stop_sound(shake_sound);
			event_user(0);
		}
		y = ystart;
		--timer;
		if (timer <= 0)
		{
			state = "raging";
			timer = 300;
			with (region) event_user(0);
			event_user(1);
		}
		break;

	case "raging":
		y = ystart + cos(objScreen.image_index);
		if (not audio_is_playing(sndBubblesShake))
		{
			shake_sound = audio_play_sound(sndBubblesShake, 4, false);
		}
		--timer;
		if (timer <= 0)
		{
			state = "resting";
			timer = 240;
			event_user(2);
		}
		break;
	}
}