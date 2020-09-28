/// @description  Handle timers
var currentRing = objGameData.rings[0];
// null counters
if sliding sliding -= 1;
if invulnerable invulnerable -= 1;
if ignore_rings ignore_rings -= 1;

// superspeed
if superspeed
{
    superspeed -= 1;
    if not superspeed {player_reset_physics();} // reset music
}

// underwater
if underwater and shield_type!=1 and !objProgram.cutscene
{
    underwater_count -= 1;
    switch underwater_count
    {
        case 1440: case 1140: case 840: audio_play_sound(sndDrownTimer, 0, 0); break;
        case 660: case 550: case 440: case 330: case 220: case 110:
            audio_play_sound(sndDrownWarning, 0, 0);
            waterCountTime = 100;
            waterCountDigit = (underwater_count / 110) - 1;
            waterCountAlpha = 0;
            break;
        case 725: if player_id==0 { play_effect(bgmDrowning,0); } break;
        case 0: player_is_drowning(); break;
    }
} else {
    waterCountAlpha = 0;
}

// superform
if superform and (superform-objLevel.timer)>0
{
    // subtract a ring every second
    if not ((superform-objLevel.timer) mod 60)
    {
        
        objGameData.rings[0] -= 1;
        if objGameData.rings[0]<=0 player_transform(false);
    }
}

