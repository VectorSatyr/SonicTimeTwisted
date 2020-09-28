/// @description  Render background to surface

shader_set(NebulaShader);
texture_set_stage(sampler_index_warp, texture_warp);
draw_background(NebulaBkg, __view_get( e__VW.XView, view_current )-42, __view_get( e__VW.YView, view_current )-128);
shader_reset();

with objParallax event_perform(ev_draw, 0);


