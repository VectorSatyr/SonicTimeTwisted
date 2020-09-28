// check if paddle should be active
/*
if objLevel.player[0].x > x && gravity_force <> 0 {
    
  with paddle[0] alarm[0] = 4;

}*/

if switchCount >= 4 {

    with paddle[0] { instance_destroy(); }

    with paddle[1] { instance_destroy(); }

    with switchButton[0] { instance_destroy(); }

    with switchButton[1] { instance_destroy(); }
    
    with objLevel.player[0] { player_reset_physics(); }

    audio_play_sound(sndBombExplosion,false,0);
    instance_destroy();
}

/* */
/*  */
