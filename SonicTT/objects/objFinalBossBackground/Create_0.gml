/// @description Initialize
event_inherited();

// nebula shader
shader = NebulaShader;
param_warp = shader_get_sampler_index(shader, "warp");

// nebula properties
surface = -1;
temp_surface = -1;
texture = pointer_null;
surface_ox = -42;
surface_oy = -128;
surface_xspeed = -5;
surface_width = sprite_width * 0.5;
surface_height = sprite_height * 0.5;
warp_origin_x = surface_width * 0.5;
warp_origin_y = surface_height * 0.5;
warp_scale = 1.1;
warp_ox = -(warp_origin_x * warp_scale);
warp_oy = -(warp_origin_y * warp_scale);
warp_angle = -15;
whirl_sprite = WhirlSpr;
whirl_angle = 0;
whirl_speed = 2;