// refresh surface
if not surface_exists(surface_warp) surface_warp = surface_create(512,256);
surface_set_target(surface_warp);

yoffset+=4;

shader_set(NebulaShader);
texture_set_stage(sampler_index_warp, texture_warp);
draw_background_tiled_ext(NebulaBkg, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current )+yoffset,1,1,c_white,1);
shader_reset();
draw_surface(surface_warp, 0, 0); 
surface_reset_target()

