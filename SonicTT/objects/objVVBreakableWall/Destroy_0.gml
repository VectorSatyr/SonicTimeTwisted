/// @description Burst
var column, row;
for (row = 0; row < debris_rows; ++row)
{
	for (column = 0; column < debris_columns; ++column)
	{
		var debris = instance_create_depth(
			x + (debris_width * column), y + (debris_height * row), 
			depth - 1, objVVBreakableWallDebris
		);
		debris.sprite_index = sprite_index;
		debris.image_index = image_index;
		debris.direction = angle_wrap(
			((sign(facing) == -1) ? 160 : 20) - (row * 4)
		);
		debris.alarm[0] = 1 + (
			((sign(facing) == -1) ? debris_columns - column : column) * 2
		);
		debris.left = debris_width * column;
		debris.top = debris_height * row;
		debris.width = debris_width;
		debris.height = debris_height;
	}
}