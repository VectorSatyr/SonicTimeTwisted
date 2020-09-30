/// @description Shade
if (view_current == 0)
{
	var camera = view_get_camera(0);
	var yview = camera_get_view_y(camera);
	var hview = camera_get_view_height(camera);

	if (yview < room_height - hview - 64)
	{
		shader_set(shader);
		shader_set_uniform_f(param_scl, xscale, yscale);
		texture_set_stage(param_mask, tx_mask);
		texture_set_stage(param_grad, tx_grad);
		shader_set_uniform_f(param_shift, shift);
		draw_surface_ext(surface, 0, yview, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		shader_reset();
	}
}