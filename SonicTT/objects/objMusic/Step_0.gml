/// @description  Music State
switch state {

case 0: // silence
    break;
case 1: // Play Music Intro
    if audio_is_playing(musicIntro) == false {
        play_music_loop(musicLoop,0);
    }
    break;
case 2: // Play Music Loop
   if audio_is_playing(musicLoop) == false  {
        play_music_loop(musicLoop,0);
    }
    break;
case 3: // Play Boss Intro
    if audio_is_playing(bossIntro) == false  {
        play_boss_loop(bossLoop,0);
    }
    break;
case 4: // Play Boss Loop
   if audio_is_playing(bossLoop) == false  {
        play_boss_loop(bossLoop,0);
    }
    break;
case 5: // Play Jingle
       if audio_is_playing(musicJingle) == false {
            if statePrevious != 5 && statePrevious != 6 {
                play_previous(statePrevious,previousPosition)
            } 
            else play_previous(priorityMusicState,previousPosition)
        }
    break;
case 6: // Play Effect
    var levelHandle = noone;
     if instance_exists(objLevel) {
        levelHandle = objLevel;
     } else if instance_exists(objSSLevel) {
        levelHandle = objSSLevel;
     }
     if levelHandle { 
           if audio_is_playing(musicEffect) == false && levelHandle.cleared == false {
                if statePrevious == 5 {
                    if audio_is_playing(musicJingle) {
                        audio_sound_gain(musicJingle, 1, 200);
                        state = 5;
                        break;
                    } else play_previous(priorityMusicState,previousPosition)
                } else play_previous(priorityMusicState,previousPosition)
              
            }
    }
    break;
}

