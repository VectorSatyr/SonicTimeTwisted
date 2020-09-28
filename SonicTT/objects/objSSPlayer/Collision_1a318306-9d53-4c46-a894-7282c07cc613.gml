if (!onGround) exit;
switch other.image_index
 {
     case 4: audio_play_sound(sndRockSmash,1,false); objProgram.temp_shield = other.image_index-4; break;
     case 5: audio_play_sound(sndShieldBubble,1,false);  objProgram.temp_shield = other.image_index-4; break;
     case 6: audio_play_sound(sndShieldLightning,1,false);  objProgram.temp_shield = other.image_index-4; break;
     case 7: audio_play_sound(sndShieldFlame,1,false);  objProgram.temp_shield = other.image_index-4; break;
     case 8: audio_play_sound(sndShieldIce,1,false); objProgram.temp_shield = other.image_index-4; break;
     case 9: audio_play_sound(sndShieldWind,1,false); objProgram.temp_shield = other.image_index-4; break;
     default: player_get_lives(1);
 }
with other instance_destroy();

