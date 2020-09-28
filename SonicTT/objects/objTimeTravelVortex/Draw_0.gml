// draw a dummy background for the effect to cover
//draw_background_ext(zonebkg, 0, 0, 2, 2, 0, c_white, 1);
// turn on the time travel effect shader
// refresh surface
//surface_set_target(tt_surface);
shader_set(TimeTravelShader);
// send the shift amount (for colour cycling) to the shader
shader_set_uniform_f(param_shift, shift);
// draw the surface with the zipper animation on it
draw_surface_ext(tt_surface, x, y, image_xscale, image_yscale, 0, c_white, 1);
// turn off the shader
shader_reset();

// draw the surface again below, without the shader
// so you can see the untextured animation
draw_surface(tt_surface, 0,512);

