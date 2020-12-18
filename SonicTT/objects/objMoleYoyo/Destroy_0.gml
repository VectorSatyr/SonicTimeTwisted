/// @description Clean up
event_inherited();
if (not was_removed)
{
	with (yoyo)
	{
	    visible = true;
	    vspeed = -2;
	    gravity = 0.21875;
	    remove = 2;
	    reaction_script = -1;
	    if (other.yoyo_length > 0) image_speed = 1;
	}
	if (frozen)
	{
		sprite_explosion_create(
			sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
		);
	}
}