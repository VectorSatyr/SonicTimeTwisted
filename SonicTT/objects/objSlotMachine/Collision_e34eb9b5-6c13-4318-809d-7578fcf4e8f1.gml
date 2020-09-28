/// @description destroy enemies
if player_id != noone {
    with other instance_destroy();
    audio_play_sound(sndPop,4,0);
}

