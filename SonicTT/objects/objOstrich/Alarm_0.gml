/// @description Thaw
if (timeline_index != -1) timeline_running = true;
frozen = false;
with (head) frozen = false;
sprite_explosion_create(
	sprShieldIceBlock, 0, x + center_ox - 24, y + center_oy - 16, 2, 2, 2, 4
);