/// @description Initialize
event_inherited();
image_index = (objProgram.in_past) ? 1 : 0;
image_speed = 0;
respawn_delay = 440;
frames_before_flashing = 60;
flashing_frames = 1;
platform = noone;
event_user(0);