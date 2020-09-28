// draw a dummy background for the effect to cover
//draw_background_ext(zonebkg, 0, 0, 2, 2, 0, c_white, 1);
// turn on the time travel effect shader
if (__view_get( e__VW.YView, 0 ) < room_height - __view_get( e__VW.HView, 0 ) - 64)
{
    shader_set(TimeTravelShader);
        shader_set_uniform_f(param_shift, shift); // send the shift amount (for colour cycling) to the shader
        draw_surface_ext(tt_surface, 0, __view_get( e__VW.YView, 0 ), image_xscale, image_yscale, 0, c_white, 1);
    shader_reset();
}

