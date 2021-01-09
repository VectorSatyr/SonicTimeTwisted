/// @description player_landing(local_id)
var local_id = argument0;

// confirm terrain landing
player_get_terrain(local_id);
landed |= 1;

// handle mask rotation
if (relative_angle > 45 and relative_angle < 315)
{
	if (not player_floor_transfer())
	{
		mask_rotation = angle_wrap(mask_rotation + 90 * sign(angle_difference(angle, mask_rotation)));
	}
}

// calculate landing speed
if (
	abs(xspeed) <= abs(yspeed) and 
	relative_angle >= 22.5 and relative_angle <= 337.5
)
{
    // scale speed to incline
    xspeed = -yspeed * sign(sine[relative_angle]);
    if (relative_angle < 45 or relative_angle > 315) xspeed *= 0.5;
}

// stop falling
yspeed = 0;