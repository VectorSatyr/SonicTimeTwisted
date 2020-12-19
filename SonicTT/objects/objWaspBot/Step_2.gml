/// @description Animate
if (frozen)
{
	freeze_ox = (alarm[0] > 0 and alarm[0] < 45) ? (-1 + (((90 - alarm[0]) div 4) mod 2) * 2) : 0;
}
else
{
	image_index += animation_speed;

	var facing = image_xscale;
	var x1 = x - patrol_range_x;
	var y1 = y - patrol_range_y;
	var x2 = x + patrol_range_x;
	var y2 = y + patrol_range_y;
	with (objPlayer)
	{
		if (point_in_rectangle(x, y, x1, y1, x2, y2))
		{
			facing = sign(other.x - x);
			other.image_xscale = (facing == 0) ? other.image_xscale : facing;
			break;
		}
	}
}