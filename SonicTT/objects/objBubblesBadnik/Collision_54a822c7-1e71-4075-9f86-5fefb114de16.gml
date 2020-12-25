/// @description Freeze
alarm[0] = 180;
y = ystart;
frozen = true;
state = "";
timer = 0;
with (region) event_user(1);
audio_stop_sound(shake_sound);
event_user(0);
instance_destroy(other);