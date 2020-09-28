/// @description  Render background to surface

if not surface_exists(surface_warp){
    sampler_index_warp = shader_get_sampler_index(NebulaShader, "warp");
    surface_warp = surface_create(256, 256);
    draw_clear_alpha(0, 0);
    surface_reset_target();
    texture_warp = surface_get_texture(surface_warp);
}

//draw_surface(surface_warp, 0, 0); 
//surface_reset_target()


// refresh surface
//if not surface_exists(surface_warp) surface_warp = surface_create(512,256);
xoffset+=xspeed;
shader_set(NebulaShader);
texture_set_stage(sampler_index_warp, texture_warp);
draw_background(NebulaBkg, __view_get( e__VW.XView, view_current )-42, __view_get( e__VW.YView, view_current )-128);
draw_background_tiled(NebulaBkg, __view_get( e__VW.XView, view_current )+xoffset, __view_get( e__VW.YView, view_current )-128)
shader_reset();

with objParallax event_perform(ev_draw, 0);
/*
draw_surface(surface_warp, view_xview[view_current]-215, view_yview[view_current]-300);

surface_reset_target()
*/




/* */
/*  */
