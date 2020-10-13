/// @description Snapshot
if (sprite_exists(screenshot) and not instance_exists(objSSHud))
{
	var camera = view_get_camera(view_current);
	var view_x = camera_get_view_x(camera);
	var view_y = camera_get_view_y(camera);
	gpu_set_blendenable(false);
	draw_sprite_stretched_ext(screenshot, 0, view_x, view_y, width, height, c_white, 1);
	gpu_set_blendenable(true);
}