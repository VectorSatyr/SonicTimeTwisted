if input_check_pressed(cLEFT) and select == 1 {
    select = 2;
    dir = -1;
    if !audio_is_playing(sndBeep) audio_play_sound(sndBeep,0,false);
} else if input_check_pressed(cLEFT) and select == 3 {
    dir = -1
    select = 1;
    if !audio_is_playing(sndBeep) audio_play_sound(sndBeep,0,false);
    }

if input_check_pressed(cRIGHT) and select == 1 {
    select = 3;
    dir = 1;
    if !audio_is_playing(sndBeep) audio_play_sound(sndBeep,0,false);
}else if input_check_pressed(cRIGHT) and select == 2 {
    dir = 1
    select = 1;
    if !audio_is_playing(sndBeep) audio_play_sound(sndBeep,0,false);
    }

if select == 2 and x > 96 and dir == -1 {
    x-=8;
}

if select == 3 and x < 336 and dir == 1 {
    x+=8;
}

if select == 1 and x > 216 and dir == -1 {
    x-=8;
}

if select == 1 and x < 215 and dir == 1 {
    x+=8;
}
if objGameData.character_id[0]!=select{
//check for select
if input_check_pressed(cA) or input_check_pressed(cB) or input_check_pressed(cC) or input_check_pressed(cSTART){
    objGameData.character_id[0]=select;
    room_goto(level_select);
}}
    

