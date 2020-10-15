/// @description Shade
if (image_xscale != 0 and image_yscale != 0)
{
	shader_set(shader);
	shader_set_uniform_f(param_scl, xscale, yscale);
	texture_set_stage(param_mask, tx_mask);
	texture_set_stage(param_grad, tx_grad);
	shader_set_uniform_f(param_shift, shift);
	draw_surface_ext(
		surface, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha
	);
	shader_reset();
}