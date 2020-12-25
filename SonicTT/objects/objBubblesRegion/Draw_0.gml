/// @description Draw bubbles
for (var n = 0; n < total_nodes; ++n)
{
	draw_sprite_ext(
		sprBubble, node_frame[n], node_x[n], node_y[n], 
		1, 1, 0, image_blend, image_alpha
	);
}