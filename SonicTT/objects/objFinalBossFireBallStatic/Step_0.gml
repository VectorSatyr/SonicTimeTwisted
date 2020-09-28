/// @description  sound
if in_view(view_current,0) {
    if !audio_is_playing(sndGalacnikAttackLoop) && objProgram.paused == false
        audio_play_sound(sndGalacnikAttackLoop,2,false);
}

/// animate lighting

if lighting_index > 4 {
    lighting_index=0;
} else lighting_index +=.25;

