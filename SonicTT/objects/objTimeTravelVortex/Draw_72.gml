/// @description Draw Vortex
if (image_xscale != 0 and image_yscale != 0)
{
	if (not surface_exists(surface))
	{
		surface = surface_create(screen_width, screen_height);
	}
	surface_set_target(surface);
	draw_clear_alpha(0, 0)
	draw_sprite_ext(
		sprite_index, image_index, 0, 0, 1, 1, 0, c_white, 1
	);
	surface_reset_target();
}