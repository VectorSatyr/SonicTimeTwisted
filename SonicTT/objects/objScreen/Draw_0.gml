/// @description  Screenshot and scanlines
if screenshot > -1 && !instance_exists(objSSHud)
{
    draw_enable_alphablend(false);
    draw_background_stretched_ext(screenshot, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), width, height, c_white, 1);
    draw_enable_alphablend(true);
}
else if scanlines
{
    draw_background_stretched(backScanlines, 0, 0, room_width, 480);
}

