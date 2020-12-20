/// @description Clean up
event_inherited();
if (audio_is_playing(propeller_sound)) audio_stop_sound(propeller_sound);
if (frozen and not was_removed)
{
	sprite_explosion_create(
		sprShieldIceBlock, 0, x - 24, y - 16, 2, 2, 2, 4
	);
}