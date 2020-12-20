/// @description Freeze
alarm[0] = 180;
if (timeline_index != -1) timeline_running = false;
frozen = true;
audio_stop_sound(propeller_sound);
propeller_sound = -1;
instance_destroy(other);