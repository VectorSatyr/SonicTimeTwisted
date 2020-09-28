/// @description  Screen settings
width = 426;
height = 240;
window_mode = 1;
window_scale = 2;
window_state = 2;
split_screen = false;
paused = false;
screenshot = -1; // for pausing
scanlines = false;
default_image_speed = 1;
alarm[0] = 2;
view_enabled = true;
__view_set( e__VW.Visible, 0, true );
__view_set( e__VW.WView, 0, width );
__view_set( e__VW.HView, 0, height );
__view_set( e__VW.WPort, 0, width );
__view_set( e__VW.HPort, 0, height );

// sync window properties
if window_get_fullscreen() window_mode = 2; else
if window_get_width() > width or window_get_height() > height { window_mode = 1; window_scale = 2 } else
if (window_get_width() != width * window_scale) or (window_get_height() != height * window_scale) window_set_size(width * window_scale, height * window_scale);
surface_resize(application_surface, width, height);

// os properties
/*fullscreen_enabled = false;
switch os_type
{
case os_windows:
case os_macosx:
    if (os_browser != browser_not_a_browser) break;
    fullscreen_enabled = true;
    break;
}*/

/* */
/*  */
