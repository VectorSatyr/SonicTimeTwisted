/// @description Clean up
if (sprite_index != sprAntnikBurn) event_inherited();
if (frozen and not was_removed)
{
	sprite_explosion_create(
		sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
	);
}