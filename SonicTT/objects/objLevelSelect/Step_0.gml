if input_check_pressed(cUP) and move == 0 and select > 0{
    move = -1;
    select -=1;
    y_next -=15;
    audio_play_sound(sndBeep,0,false);
}
else if input_check_pressed(cDOWN) and move == 0 and select < 27 {
    move = 1;
    select +=1;
    y_next +=15;
    audio_play_sound(sndBeep,0,false);
}

if move == 1 and y < y_next
    y +=15;
else if move == -1 and y > y_next
    y -=15;
else {
        move = 0;
        y_next = y;
    }

//if objGameData.character_id[0]!=select{
//check for select
if input_check_pressed(cACTION) or input_check_pressed(cSTART){
    
    switch select {
    
    case 0:
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 1:
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 2:
    objProgram.current_level=1;
    objProgram.in_past = false
    level_goto_next()
    break;
    
    case 3:
    objProgram.current_level=1;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 4:
    objProgram.current_level=2;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 5:
    objProgram.current_level=2;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 6:
    objProgram.current_level=3;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 7:
    objProgram.current_level=3;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 8:
    objProgram.current_level=4;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 9:
    objProgram.current_level=4;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 10:
    objProgram.current_level=5;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 11:
    objProgram.current_level=5;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 12:
    objProgram.current_level=6;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 13:
    objProgram.current_level=6;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 14:
    objProgram.current_level=7;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 15:
    objProgram.current_level=7;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 16:
    objProgram.current_level=8;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 17:
    objProgram.current_level=8;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 18:
    objProgram.current_level=9;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 19:
    objProgram.current_level=9;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 20:
    objProgram.current_level=10;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 21:
    objProgram.current_level=10;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 22:
    objProgram.current_level=11;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 23:
    objProgram.current_level=11;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 24:
    objProgram.current_level=12;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 25:
    objProgram.current_level=12;
    objProgram.in_past = true;
    level_goto_next()
    break;
    
    case 26: //Sunken Saucer
    objProgram.current_level=14;
    objProgram.in_past = false;
    level_goto_next()
    break;
    
    case 27:
    objProgram.current_level=15;
    objProgram.in_past = false;
    level_goto_next()
    break;
}}
    



