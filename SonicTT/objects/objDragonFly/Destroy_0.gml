/// @description Clean up
event_inherited();
for (var n = 0; n < 3; ++n) instance_destroy(segment[n]);
if (frozen and not was_removed)
{
	sprite_explosion_create(
		sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
	);
}