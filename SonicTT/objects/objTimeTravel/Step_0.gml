/// @description Transition
switch (state)
{
case "exiting":
	if (image_index > total_frames - 1)
	{
		image_index = total_frames - 1;
		if (room_exists(next_room)) room_goto(next_room);
		state = "transitioning";
	}
	break;

case "transitioning":
	with (objLevel)
	{
		started = true;
		timer_enabled = true;
	}
	with (objHud)
	{
		visible = true;
	}
	image_xscale = -image_xscale;
	xoffset = (sign(image_xscale) == -1) ? screen_width : 0;
	state = "entering";
	break;

case "entering":
	if (image_index <= 0) instance_destroy();
	break;
}