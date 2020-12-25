/// @description Clean up
event_inherited();
instance_destroy(region);
audio_stop_sound(shake_sound);
if (frozen and not was_removed)
{
	sprite_explosion_create(
		sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
	);
}