/// @description Freeze
alarm[0] = 180;
if (timeline_index != -1) timeline_running = false;
frozen = true;
instance_destroy(other);