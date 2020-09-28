if shake == true {

    screen_shake();
    
    if !audio_is_playing(sndScreenShake) { audio_play_sound(sndScreenShake, 0,0); }

}

