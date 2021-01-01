/// @description Animate
event_inherited();
var frame = 0;
with (objScreen) frame = image_index;
visible = (alarm[0] > 0 and alarm[0] < frames_before_flashing) ? 
	bool((frame div flashing_frames) mod 2) : false;