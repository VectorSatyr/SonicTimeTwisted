
// draw a dummy background for the effect to cover
//draw_background_ext(zonebkg, 0, 0, 2, 2, 0, c_white, 1);
// turn on the time travel effect shader
shader_set(TimeTravelShader);
// send the shift amount (for colour cycling) to the shader
shader_set_uniform_f(param_shift, shift);
// draw the surface with the zipper animation on it
// (here it's scaled by 2 just to see it better)
draw_surface_ext(tt_surface, __view_get( e__VW.XView, 0 )+xoffset, __view_get( e__VW.YView, 0 ), image_xscale, image_yscale, 0, c_white, 1);
// turn off the shader
shader_reset();


