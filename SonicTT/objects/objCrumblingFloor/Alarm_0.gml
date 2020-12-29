/// @description Collapse
audio_play_sound_at(sndCollapse, 
	x + abs(sprite_width * 0.5), y, 0, 100, 300, 1, false, 0
);

var row, column, ind;
for (row = 0; row < total_rows; ++row)
{
	for (column = 0; column < total_columns; ++column)
	{
		ind = instance_create_depth(
			x + (column * cell_width), 
			y + (row * cell_height), depth, 
			objCrumblingFloorPiece
		);
		ind.sprite_index = sprite_index;
		ind.through = (row == 0);
		ind.normal = 0;
		if (row > 0) ind.depth_mask = 0;
		ind.alarm[0] = ((total_rows - row - 1) * timed_delay_per_row);
		ind.alarm[0] += (reverse) ? (column * timed_delay_per_column) : 
			((total_columns - column) * timed_delay_per_column);
		ind.left = cell_width * column;
		ind.top = cell_height * row;
		ind.width = cell_width;
		ind.height = cell_height;
	}
}
instance_destroy();