/// @description Gravitate
if (x_speed != 0) x += x_speed;
if (y_speed != 0) y += y_speed;
var valid = instance_exists(parent_id);
if (valid) valid &= (parent_id.shield_type == 2);
if (valid)
{
	var ox = sign(parent_id.x - x);
	if (ox != 0)
	{
		var move_x = (ox != sign(x_speed)) ? rebound_speed : follow_speed;
		x_speed = clamp(x_speed + (move_x * ox), -speed_cap, speed_cap);
	}
	var oy = sign(parent_id.y - y);
	if (oy != 0)
	{
		var move_y = (oy != sign(y_speed)) ? rebound_speed : follow_speed;
		y_speed = clamp(y_speed + (move_y * oy), -speed_cap, speed_cap);
	}
}
else
{
	instance_create_depth(x, y, depth, objRingDropped);
	instance_destroy();
}