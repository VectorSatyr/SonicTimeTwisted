/// @description  Handle jingle
//if not (paused or lost_focus) and jingle>-1 and not audio_is_playing(jingle) {audio_music_gain(objGameData.volume_music, 400); jingle = -1;}

var __b__;
__b__ = action_if_variable(debug_mode, false, 0);
if __b__
{
/// Window focus

// ignore if we've paused manually
if paused exit;

/*
// handle based on platform
switch os_type
{
case os_windows:
    // toggle focus
    if not (lost_focus xor window_get_focus(window_handle())) {lost_focus = not lost_focus; game_pause(lost_focus);}
    break;
}

/* */
}
/*  */
