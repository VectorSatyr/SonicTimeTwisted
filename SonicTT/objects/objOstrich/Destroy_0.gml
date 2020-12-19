/// @description Clean up
if (not was_removed)
{
	instance_destroy(head);
	instance_create_depth(
		x + center_ox, y + center_oy, depth - 1, objExplosionSpecial
	);
	instance_create_depth(
		x + center_ox, y + center_oy, depth, objFlowerSpark
	);
	if (frozen)
	{
		sprite_explosion_create(
			sprShieldIceBlock, 0, x + center_ox - 24, y + center_oy - 16, 
			2, 2, 2, 4
		);
	}
}