/// @description Animate
event_inherited();

// additive blending
blend_xscale = image_xscale * blend_scale_mod;
blend_yscale = image_yscale * blend_scale_mod;
blend_alpha = image_alpha * blend_alpha_mod;

// lightning
lightning_subimg = 
	(lightning_subimg + lightning_anim_speed) mod lightning_anim_frames;
lightning_xscale = image_xscale * lightning_scale_mod;
lightning_yscale = image_yscale * lightning_scale_mod;
lightning_alpha = image_alpha * lightning_alpha_mod;