/// @description Draw
draw_self();
if (frozen)
{
	draw_sprite(
		sprShieldIceBlock, 0, x + freeze_ox + center_ox, y + center_oy
	);
}