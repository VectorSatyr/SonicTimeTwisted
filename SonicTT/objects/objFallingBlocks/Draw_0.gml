/// @description Draw row
for (var n = 0; n < total; ++n)
{
	draw_sprite_ext(
		sprite_index, image_index, x + (n * cell_width), y, 
		1, 1, 0, image_blend, image_alpha
	);
}