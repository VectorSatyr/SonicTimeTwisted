/// @description Shade
var camera = view_get_camera(view_current);
var xview = camera_get_view_x(camera);
var yview = camera_get_view_y(camera);

shader_set(shader);
texture_set_stage(param_warp, texture);
draw_sprite_ext(
	sprite_index, image_index, xview + surface_ox, yview + surface_oy,
	image_xscale, image_yscale, image_angle, image_blend, image_alpha
);
shader_reset();
with (objParallax)
{
	event_perform(ev_draw, 0);
}