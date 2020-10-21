/// @description Initialize
event_inherited();
image_speed = 0;

var back_height = 320;
var scene_height = 224;
with (objScreen)
{
	scene_height = height;
}

var relative_y = (room_height - back_height) / (room_height - scene_height);

// hills
parallax_create(1, backPPZHills, 0, 0, 144, 48, 0, 0, 0.86, relative_y, 0, 212, 0, 0);

// mountains
parallax_create(1, backPPZMountain, 0, 0, 144, 48, 0, 0, 0.9, relative_y, 0, 129, 0, 0);

// pipes
parallax_create(1, backPPZPipe, 0, 0, 112, 70, 0, 0, 0.84, relative_y, 0, 260, 0, 0);

// lava
parallax_create(1, backPPZLava, 0, 0, 64, 16, -0.1, 0, 0.9, relative_y, 0, 170, 0, 0);
parallax_create(1, backPPZLava, 0, 16, 64, 16, -0.15, 0, 0.9, relative_y, 0, 186, 0, 0);
parallax_create(1, backPPZLava, 0, 32, 64, 32, -0.2, 0, 0.9, relative_y, 0, 202, 0, 0);
parallax_create(1, backPPZLava, 0, 32, 64, 32, -0.25, 0, 0.9, relative_y, 0, 234, 0, 0);

// planet earth
instance_create(0, 0, objPPBackEarth);

// nebula shader
shader = NebulaShader;
param_warp = shader_get_sampler_index(shader, "warp");

// nebula properties
surface = -1;
temp_surface = -1;
texture = pointer_null;
surface_ox = -42;
surface_oy = -128;
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