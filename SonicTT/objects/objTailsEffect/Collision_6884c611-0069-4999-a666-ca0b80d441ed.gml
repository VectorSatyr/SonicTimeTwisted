// abort if not actually flying
if player_id.state!=player_state_fly or player_id.underwater exit;
if sprite_index!=sprTailsEffect4 exit;

// abort if cannot damage
if other.invulnerable exit;

with other {
if alarm[0] == -1 {
        // hit boss
        alarm[0] = 30;
        if life>0
        {
            life -= 1;
            audio_play_sound(sndBossHit, 2, 0);
            audio_play_sound(sndGalanikHit, 1, 0);
            state = 4;
            if life<=0 {
                event_user(0);
                audio_play_sound(sndGalanikKnockBack,2,false);
                event_user(0);
            }
        }
    }
    with parentId {
            flash = true;
            alarm[11] = 30;
        }
}


