/// @description Draw lightning
if (view_current == 0)
{
	var camera = view_get_camera(0);
	var yview = camera_get_view_y(camera);
	var hview = camera_get_view_height(camera);

	if (yview < room_height - hview - 64)
	{
		if (not surface_exists(surface))
		{
			surface = surface_create(screen_width, screen_height);
		}

		var scale = max(1, yview / screen_height);
		var min_x = min_radius / scale;
		var max_x = max_radius / scale;
		var fragment = yview / 80;
		var radians, n;

		surface_set_target(surface);
		draw_clear_alpha(0, 0);
		draw_primitive_begin(pr_trianglefan);
		draw_vertex_colour(center_x, center_y, c_white, 1);

		// right side
		var cx = center_x + max_x;
        for (n = 0; n < resolution; ++n)
        {
			radians = degtorad(wave_frame + n + fragment);
            draw_vertex_colour(cx + (sin(radians * 16 + (yview / 40)) * min_x), n * texel, c_white, 1);
        }
		radians = degtorad(wave_frame + n + fragment);
        draw_vertex_colour(cx + (sin(radians * 16 + (yview / 40)) * min_x), screen_height, c_white, 1);

		// left side
		cx = center_x - max_x;
        for (n = 0; n < resolution; ++n)
        {
			radian = degtorad(wave_frame - n + fragment);
            draw_vertex_colour(cx - (cos(radian * 16 + (yview / 40)) * -min_x),
				(resolution - n) * texel, c_white, 1);
        }
		radians = degtorad(wave_frame - n + fragment);
        draw_vertex_colour(cx - (cos(radians * 16 + (yview / 40)) * -min_x), 0, c_white, 1);

		// back to start
		cx = center_x + max_x;
		radians = degtorad(wave_frame + fragment);
	    draw_vertex_colour(cx + (sin(radians * 16 + (yview / 40)) * min_x), 0, c_white, 1);
		draw_primitive_end();
		surface_reset_target();
	}
	else
	{
		if (surface_exists(surface)) surface_free(surface);
	}
}