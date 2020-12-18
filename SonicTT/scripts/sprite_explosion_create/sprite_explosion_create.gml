/// @function sprite_explosion_create(sprite, subimg, x, y, columns, rows, xspeed, yspeed)
/// @description Explodes the given sprite into pieces based on the given parameters
/// @param {real} sprite sprite resource index
/// @param {real} subimg sprite image frame
/// @param {real} x room x-position (top-most)
/// @param {real} y room y-position (left-most)
/// @param {real} columns total horizontal splits
/// @param {real} rows total vertical splits
/// @param {real} xspeed maximum horizontal speed to scale to
/// @param {real} yspeed maximum vertical speed to scale to
var sprite = argument0;
var subimg = argument1;
var _x = argument2;
var _y = argument3;
var columns = argument4;
var rows = argument5;
var xspeed = argument6;
var yspeed = argument7;

if (sprite_exists(sprite))
{
	var width = sprite_get_width(sprite) div columns;
	var height = sprite_get_height(sprite) div rows;
	var column, row;
	for (row = 0; row < rows; ++row)
	{
		for (column = 0; column < columns; ++column)
		{
			var debris = instance_create_depth(
				_x + (width * column), _y + (height * row), 
				depth - 1, objSpriteDebris
			);
			debris.sprite_index = sprite;
			debris.image_index = subimg;
			debris.left = width * column;
			debris.top = height * row;
			debris.width = width;
			debris.height = height;
			debris.x_speed = -dcos(((column + 0.5) / columns) * 180) * xspeed;
			debris.y_speed = -dcos(((row + 0.5) / rows) * 90) * yspeed;
		}
	}
}