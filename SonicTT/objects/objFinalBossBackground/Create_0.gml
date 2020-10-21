action_inherited();
/// Nebula Shader
angle_change = 2;
angle_warp = -15;
scale = 1.1;

sampler_index_warp = shader_get_sampler_index(NebulaShader, "warp");
surface_warp = surface_create(256, 256);
surface_set_target(surface_warp);
draw_clear_alpha(0, 0);
surface_reset_target();
texture_warp = surface_get_texture(surface_warp);
whirl_angle = 0;

//var relative_y;

// defaults
//surface = -1;
//relative_y = (room_height-320)/(room_height-objScreen.height);

xspeed=-5;
xoffset=0;

