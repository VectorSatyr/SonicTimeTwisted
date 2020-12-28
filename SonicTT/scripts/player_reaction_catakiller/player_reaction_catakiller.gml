/// @description player_reaction_catakiller(local_id)
var local_id = argument0;

var result = false;

with (local_id.parent_id)
{
	// break free, if frozen
	if (frozen and alarm[1] > 0) alarm[1] = 1;

	// bounce
	speed = 4;
	direction = irandom(60) + 60;
	gravity = 0.21875;
	if (not bouncing) alarm[0] = 120;
	bouncing = true;
	jump_action = true;

	// scatter orbs
	for (var n = 0; n < 3; ++n)
	{
		with (orb[n])
		{
			alarm[0] = 120;
			speed = 4;
			direction = irandom(60) + 60;
			gravity = 0.21875;
			remove = 2;
		}
		orb[n] = noone;
	}
}

// take damage, UNLESS we're charging through as Knuckles
if (not (abs(xspeed) >= 6 and character_id == 3))
{
	result = player_reaction_harmful(local_id);
}

return result;