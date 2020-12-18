/// @description Clean up
event_inherited();
if (was_removed)
{
	for (var n = 0; n < 3; ++n)
	{
		orbs[n].was_removed = true;
		instance_destroy(orbs[n]);
	}
}
else
{
	for (var n = 0; n < 3; ++n)
	{
		orbs[n].gravity = 0.21875;
		orbs[n].reaction_script = -1;
		orbs[n].remove = 2;
	}
	if (frozen)
	{
		sprite_explosion_create(
			sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
		);
	}
}