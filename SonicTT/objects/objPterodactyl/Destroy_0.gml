/// @description Clean up
event_inherited();
instance_destroy(bomb[0]);
instance_destroy(bomb[1]);
if (frozen and not was_removed)
{
	sprite_explosion_create(
		sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
	);
}