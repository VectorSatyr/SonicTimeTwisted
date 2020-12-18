/// @description Clean up
event_inherited();
if (frozen and not was_removed)
{
	sprite_explosion_create(
		sprShieldIceBlock, 0, x - 24, y - 16 + yoffset, 2, 2, 2, 4
	);
}