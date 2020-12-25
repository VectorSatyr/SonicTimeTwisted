/// @description Initialize
event_inherited();
image_speed = 0;
state = "resting";
timer = 164;
region = instance_create_depth(x, y, -8, objBubblesRegion);
shake_sound = noone;