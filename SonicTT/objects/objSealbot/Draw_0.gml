/// @description Draw
draw_self();
if (frozen)
{
	draw_sprite(sprShieldIceBlock, 0, x + freeze_ox, y);
}
if (debug_mode)
{
	var color = draw_get_color();
	var alpha = draw_get_alpha();
	draw_set_color(c_lime);
	draw_set_alpha(image_alpha);
	draw_rectangle(x - x_radius, y - y_radius, x + x_radius, y + y_radius, true);
	draw_set_color(c_white);
	draw_line(x - x_radius, y, x + x_radius, y);
	draw_set_color(color);
	draw_set_alpha(alpha);
}