/// @description  scale opening
if !opening exit;
    if title_word<4
    {
        // ignore empty strings
        if title_length[title_word]<1
        {
            title_word += 1;
        }

        // ignore if past string length
        else if title_pos[title_word]<title_length[title_word]
        { 
            // decrease scale to normal
            title_scale[title_word, title_pos[title_word]] = max(title_scale[title_word, title_pos[title_word]]-title_speed, 1);
            if title_word < 3 && title_scale[title_word, title_pos[title_word]] == 1 audio_play_sound(sndDingOpen, 1, false);
            else if title_word == 3 && title_scale[title_word, title_pos[title_word]] == 1 {
            
                // Start Race
                audio_play_sound(sndDingEnd, 1, false);
                
                if (!global.special_level_music_played) {
                    if (audio_is_playing(objMusic.musicIntro) == false && audio_is_playing(objMusic.musicLoop) == false) {
                        play_music_intro(objMusic.musicIntro,0);
                        global.special_level_music_played = true;
                    }
                }

                alarm[0] = 25;
                flash=true;
                with objSSLevel { started = true; }
                with objSSPlayer { started = true; }
                
                }
            
            if title_scale[title_word, title_pos[title_word]]==1
            {
                // go to the next letter / word
                title_pos[title_word] += 1; 
                //if title_word>2 {  title_speed = .5; }
                if title_pos[title_word]==title_length[title_word] {title_pos[title_word] -= 1; title_word += 1; }
                if title_word==4 alarm[0] = 120;
            }
        }
    }

if flash == true {

    if objScreen.image_index mod 4 == 0 {
    if visible visible = false;
        else visible = true;
    }

}

