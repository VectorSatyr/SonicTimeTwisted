/// @description Initialize
event_inherited();
image_speed = 0;
state = "patrolling";
timer = 30;
facing_sign = 1;
wall_sign = 0;
cliff_sign = 0;
x_radius = (bbox_right - xstart) + 1;
y_radius = (bbox_bottom - ystart) + 1;
x_speed = 2;
speed_cap = 3;
acceleration = 0.1;
deceleration = 3 / 29;
patrol_range_x = 75;
patrol_range_y = 30;
charging_speed = 5;
freeze_ox = 0;