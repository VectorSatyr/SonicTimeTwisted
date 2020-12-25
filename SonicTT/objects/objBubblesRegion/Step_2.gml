/// @description Animate
event_inherited();
image_alpha = (active) ? 
	min(image_alpha + fade_rate, 1.0) : max(image_alpha - fade_rate, fade_alpha);