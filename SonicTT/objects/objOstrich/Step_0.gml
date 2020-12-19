/// @description Extend
if (not frozen)
{
	switch (state)
	{
	case "watching":
		--timer;
		if (timer <= 0) 
		{
			state = "lowering";
			timer = 0;
			event_user(1);
		}
		break;

	case "lowering":
		if (image_index >= 3)
		{
			state = "drilling";
			timer = 0;
			event_user(2);
		}
		break;

	case "drilling":
		--timer;
		if (timer <= 0)
		{
			timer = 18;
			audio_play_sound(sndRockSmash, 5, 0);
			with (instance_create_depth(
				x + debris_ox, y + debris_oy, depth - 2, objOstrichDibris
			))
			{
		        image_index = 1;
		        direction = 60;
		    }
			with (instance_create_depth(
				x + debris_ox, y + debris_oy, depth - 2, objOstrichDibris
			))
			{
		        image_index = 0;
		        direction = 120;
		    }
		}
        if (image_index >= 8)
		{
			state = "searching";
			timer = 30;
			event_user(3);
        }
		break;

	case "searching":
		--timer;
		if (timer <= 0)
		{
			head = instance_create_depth(
				x + head_ox - irandom(head_range), y, depth + 3, objOstrichHead
			);
			head.owner = id;
			state = "";
			timer = 0;
		}
		break;

	case "emerging":
		if (image_index < 1)
		{
			event_user(0);
			state = "watching";
			timer = 180;
		}
		break;
	}
}