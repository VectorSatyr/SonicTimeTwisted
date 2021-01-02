/// @description Collapse
audio_play_sound_at(
	sndBreak, x + (sprite_width * 0.5), y, 0, 100, 300, 1, false, 2
);
for (var n = 0; n < total; ++n)
{
	instance_create_depth(
		x + (n * cell_width), y, depth, objSingleFallBlock
	);
}
instance_destroy();