/// @description  Horizontal Movement
if selectState == 0 {
    if selectCheck > 0 {
        if input_check_pressed(cLEFT) {
            xSpeed=-1;
            selectCheck -=1;
            audio_play_sound(sndBeep,10,false);
        }
    }
    
    if selectCheck < 7 {
        if input_check_pressed(cRIGHT) {
            xSpeed=1;
            selectCheck +=1;
            audio_play_sound(sndBeep,10,false);
        }
    }
}
else if selectState == 1 {

    if input_check_pressed(cLEFT) && slots[selectCheck].visiblePast==1 {
        stageLeftRight=0;
    }
    if input_check_pressed(cRIGHT) && slots[selectCheck].visibleFuture==1 {
        stageLeftRight=1;
    }
}
else if selectState == 3 {

    var filename = save_file_name(selectCheck);
    
    if input_check_pressed(cLEFT) {
        slots[selectCheck].visiblePast=0;
        slots[selectCheck].visibleFuture=0;
        file_delete(filename);
        selectState = 0;
        slots[selectCheck].iconIndex = 0;
        slots[selectCheck].characterSelect=1;
        slots[selectCheck].alarm[0] = 1;
        slots[selectCheck].lastFutureLevel = 0;
        slots[selectCheck].lastPastLevel = 0;
        sprite_index = sprSaveControl;
        
    }
    if input_check_pressed(cRIGHT) {
        
        selectState =0;    
    
    }   
}


/// Selector Movement
    
if x <> slots[selectCheck].x {    

    if(xSpeed == 1)
        x += 16;
    if(xSpeed == -1)
        x -= 16;

} else {

    xSpeed=0;

}

    


/// Vertical Controls and Actions
if xSpeed == 0 {

    if selectState == 0 {
        if input_check_pressed(cA) || input_check_pressed(cSTART) {

        if selectCheck != 7 {
        
        if sprite_index == sprSaveDelete {
            selectState=3;
        
        } else {
                var filename = save_file_name(selectCheck);
                if !file_exists(filename) {
                    selectState = 2;
                    allowLevelStart = false;
                } else {
    
                    selectState = 1;
                }
            }
            
            } else if sprite_index == sprSaveControl{
            
                //selectState=3;
                sprite_index=sprSaveDelete;
                image_speed=.25;
            
            } else {
            
                sprite_index=sprSaveControl;
                image_speed=0;
            
            }
        }
    }

    if selectState == 1 {

        with slots[selectCheck] {

            if input_check_pressed(cUP) {
                if lastFutureLevel > iconIndex || lastPastLevel > iconIndex
                    iconIndex += 1;
            }

            if input_check_pressed(cDOWN) {
                if iconIndex > 0
                    iconIndex -= 1;
            }

            if input_check_pressed(cB) {
                other.selectState = 0;
                allowLevelStart = false;
            }

            if input_check_released(cA) || input_check_pressed(cSTART) {

                allowLevelStart = true;

            }

            if (input_check_pressed(cA) || input_check_pressed(cSTART)) && allowLevelStart == true {

                if input_check_pressed(cLEFT) && slots[selectCheck].visiblePast==1 {
                        stageLeftRight=0;
                    }
                    if input_check_pressed(cRIGHT) && slots[selectCheck].visibleFuture==1 {
                        stageLeftRight=1;
                    }
                if (other.stageLeftRight == 1 && visibleFuture == 1) or (other.stageLeftRight == 0 && visiblePast == 1) {
                    if other.stageLeftRight == 0
                    objProgram.in_past = true;
                    else objProgram.in_past = false;
    
                    objGameData.character_id[0] = characterSelect;
                    objProgram.saveSlot=other.selectCheck;
                    var file = save_file_name(slotNumber);
                    load_emeralds(file);
                    load_lives(file);
                    if iconIndex > 0 {
                        level_goto_from_save(iconIndex + 1)
                    }
                    else {
                        level_goto_from_save(iconIndex)
                    }
                }
            }

            if iconIndex < 0 {
                iconIndex = lastIndex;
            } else if iconIndex > lastIndex {
                iconIndex = 0;
            }

            if input_check_pressed(cUP) || input_check_pressed(cDOWN) {

                if pastLevels[iconIndex] == true {
                    visiblePast = 1;
                }
                else
                    visiblePast = 0;

                if futureLevels[iconIndex] == true {
                    visibleFuture = 1;
                }
                else if futureLevels[iconIndex] == false visibleFuture = 0;
            }
        }
    }

    if selectState == 2 {

        with slots[selectCheck] {
            if input_check_pressed(cUP) {
                characterSelect += 1;
            }

            if input_check_pressed(cDOWN) {
                characterSelect -= 1;
            }

            if characterSelect > 3 {

                characterSelect = 1;

            } else if characterSelect < 1 {

                characterSelect = 3;
            }

            if input_check_released(cA) || input_check_pressed(cSTART) {

                allowLevelStart = true;

            }

            if input_check_pressed(cB) {
                other.selectState = 0;
            }

        }
        
            if (input_check_pressed(cA) || input_check_pressed(cSTART)) && slots[selectCheck].allowLevelStart == true {

            
            create_new_save(slots[selectCheck].characterSelect, other.selectCheck);
            slots[selectCheck].futureLevels[0]=true;
            slots[selectCheck].allowLevelStart =false;
            slots[selectCheck].visibleFuture=1;
            selectState = 1;
        }
    }
    
}

/// visibility flash
if selectState!=3 && objScreen.image_index mod 4 {
    if visible
        visible = false;
    else visible = true;
} else visible=true;

