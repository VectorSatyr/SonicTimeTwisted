// abort if cannot damage
if other.invulnerable exit;
if !shot exit;
if !instance_exists(objLevel.player[0]) {
    exit;
}
bounce_health = 1;
with other {
if alarm[0] == -1 {
        // hit boss
        alarm[0] = 30;
        state = 4;
        audio_play_sound(sndBossHit, 2, 0);
        audio_play_sound(sndGalanikHit, 1, 0);
        if life>0
        {
            life -= 1;
            if life<=0 
            event_user(0);
            audio_play_sound(sndGalanikKnockBack,2,false);
            event_user(0);
        }
    }
    with parentId {
            flash = true;
            alarm[11] = 30;
        }
}


