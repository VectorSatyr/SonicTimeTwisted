/// @description Shade
if (view_current == 0)
{
	var camera = view_get_camera(0);
	var xview = camera_get_view_x(camera);
	var yview = camera_get_view_y(camera);

	shader_set(shader);
	shader_set_uniform_f(param_scl, xscale, yscale);
	texture_set_stage(param_mask, tx_mask);
	texture_set_stage(param_grad, tx_grad);
	shader_set_uniform_f(param_shift, shift);
	draw_surface_ext(
		surface, xview + xoffset, yview, 
		image_xscale, image_yscale, image_angle, image_blend, image_alpha
	);
	shader_reset();
}