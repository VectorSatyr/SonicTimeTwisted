if other.reaction_script == noone && alarm[0] == -1 {
    alarm[0] = 30;
    if life>0
    {
        life -= 1;
        if life<=0 event_user(0);
    }
    
    // sound
    audio_play_sound(sndBossHit, 0, 0);
}

