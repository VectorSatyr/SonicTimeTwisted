/// @description Draw Nebula
if (not surface_exists(surface))
{
	surface = surface_create(surface_width, surface_height);
	texture = surface_get_texture(surface);
}
if (not surface_exists(temp_surface))
{
	temp_surface = surface_create(surface_width, surface_height);
}

surface_copy(temp_surface, 0, 0, surface);
surface_set_target(surface);
texture_set_interpolation(true);
d3d_transform_set_rotation_z(warp_angle);
d3d_transform_add_translation(warp_origin_x, warp_origin_y, 0);
draw_surface_ext(
	temp_surface, warp_ox, warp_oy, warp_scale, warp_scale, 0, c_white, 1
);
d3d_transform_set_identity();
draw_sprite_ext(
	whirl_sprite, 0, warp_origin_x, warp_origin_y, 1, 1, whirl_angle, c_white, 1
);
texture_set_interpolation(false);
surface_reset_target();