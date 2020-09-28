action_inherited();
/// Initialize background

// defaults
var relative_y = 1; 
var absolute_y = room_height-(room_height*relative_y);

// crane
parallax_create_sprite(1, sprAAPCrane, 0, 0, 0, 0.54, relative_y, 0, absolute_y+20, 1024, 0);

// rocks
//parallax_create(1, backAAPRocks, 0, 0, 196, 74, 0, 0, 0.58, relative_y, 0, absolute_y+256, 0, 0); //432

// grass 2
parallax_create(1, backAAPGrass2, 0, 0, 128, 32, 0, 0, 0.60, relative_y, 0, absolute_y+240, 0, 0); //418

// grass w/ cranes
parallax_create(1, backAAPGrass1, 0, 0, 256, 192, 0, 0, 0.64, relative_y, 0, absolute_y+80, 0, 0); //240

// water
parallax_create(1, backAAPWater, 0, 0, 32, 64, 0, 0, 0.8, relative_y, 0, absolute_y+160, 0, 0); //338

// hills
parallax_create(1, backAAPHills, 0, 0, 256, 98, 0, 0, 0.85, relative_y, 0, absolute_y+64, 0, 0); //240

// clouds
with parallax_create(1, backAAFClouds, 0, 0, 460, 160, -0.5, 0, 0.85, relative_y, 0, absolute_y-64, 0, 0) image_alpha = 0.5;
with parallax_create(1, backAAFClouds, 0, 160, 460, 167, -0.2, 0, 0.8, relative_y, 0, absolute_y+104, 0, 0) image_alpha = 0.5;

// sky
parallax_create(1, backAAPSky, 0, 0, 16, 405, 0, 0, 0.85, relative_y, 0, absolute_y-112, 0, 0); //-104

action_kill_object();
