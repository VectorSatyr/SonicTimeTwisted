/// @description Burst
var width = sprite_width div debris_columns;
var height = sprite_height div debris_rows;
var column, row;
for (row = 0; row < debris_rows; ++row)
{
	for (column = 0; column < debris_columns; ++column)
	{
		var debris = instance_create_depth(
			x + (width * column), y + (height * row), 
			depth - 1, objVVBreakableWallDebris
		);
		debris.sprite_index = sprite_index;
		debris.image_index = image_index;
		debris.direction = angle_wrap(((sign(facing) == -1) ? 160 : 20) - (row * 4));
		debris.alarm[0] = 1 + ((sign(facing) == -1) ? ((debris_columns - column) * 2) : (column * 2));
		debris.left = width * column;
		debris.top = height * row;
		debris.width = width;
		debris.height = height;
	}
}