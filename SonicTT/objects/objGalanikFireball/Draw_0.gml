/// @description Draw flame
draw_sprite_ext(
	sprite_index, image_index, x, y, 
	image_xscale, image_yscale, image_angle, image_blend, image_alpha
);
draw_set_blend_mode(bm_add);
draw_sprite_ext(
	blend_sprite, image_index, x, y, 
	blend_xscale, blend_yscale, image_angle, image_blend, blend_alpha
);
draw_sprite_ext(
	lightning_sprite, lightning_subimg, x, y, 
	lightning_xscale, lightning_yscale, 
	image_angle, image_blend, lightning_alpha
);
draw_set_blend_mode(bm_normal);