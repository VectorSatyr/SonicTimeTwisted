/// @description Initialize
event_inherited();
image_speed = 0;
image_xscale = -1;
past_version = false;
state = "advancing";
timer = 0;
max_speed = 4;
x_speed = -max_speed;
deceleration = 0.25;
turning_sign = image_xscale;
patrol_x = 96;
propeller_sound = -1;