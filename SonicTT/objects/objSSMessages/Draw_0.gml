/// @description  Game Play Messages

if objScreen.paused exit;
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);
// score / time / rings string
draw_set_font(objResources.fontHud);
draw_set_color(c_white);
draw_set_halign(fa_center);

if closeMenu == false {
    switch objSSPlayer.kill {
        case 1:
            draw_text(213,80,string_hash_to_newline("OUT OF RINGS"))
        break;
        
        case 2:
            draw_text(213,80,string_hash_to_newline("OFF TRACK"))
        break;
        
        case 3:
            draw_text(213,80,string_hash_to_newline("METAL SONIC WINS"))
        break;
    }
    
    if objSSPlayer.kill > 0  && alarm[1]== -1 { 
        if objGameData.player_lives[0] > 1 {
            draw_text(213,96,string_hash_to_newline("TRY AGAIN z1 LIFE"))
        } else { selectorOffset = 118; }
        draw_text(213,112,string_hash_to_newline("RETURN TO ACT"))
    
        if input_check_pressed(cUP) {
        if objGameData.player_lives[0] > 1 {
            selectorOffset = 102;
            } else selectorOffset = 118;
        } else if input_check_pressed(cDOWN) {
            selectorOffset = 118;
        }
        
        if input_check_pressed(cACTION) {
            if selectorOffset == 102 {
                if objGameData.player_lives[0] > 1 {
                objGameData.player_lives[0] -= 1;
                save_lives(objGameData.player_lives[0]);
                room_restart();
                with objSSLevel loopMusic = true;
                }
            } else {
                closeMenu = true;
                stop_all_music(false);
                level_goback();
            }
        }
        draw_sprite(sprLevelSelect,image_index,213,selectorOffset);
    }
}

/// Opening
if opening {
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);
// title first word
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(objResources.fontTitleLarge);

draw_text(213,64,string_hash_to_newline("Race"));
// title second word
draw_set_color(blue);
draw_text(213,98,string_hash_to_newline("Metal Sonic"));
/*if title_word>0 for (i=0; i<title_pos[1]+1; i+=1) draw_text_transformed(title_ox[1]+string_width(string_copy(title_string[1], 0, i))-70, 98, string_char_at(title_string[1], i+1), title_scale[1, i], title_scale[1, i], 0);
if title_word>1 for (i=0; i<title_pos[2]+1; i+=1) draw_text_transformed(title_ox[2]+string_width(string_copy(title_string[2], 0, i))+15, 98, string_char_at(title_string[2], i+1), title_scale[2, i], title_scale[2, i], 0);*/
draw_set_color(c_yellow);

//3
if title_word>0 for (i=0; i<title_pos[0]+1; i+=1) draw_text_transformed(title_ox[0]+string_width(string_hash_to_newline(string_copy(title_string[0], 0, i)))-172, 132, string_hash_to_newline(string_char_at(title_string[0], i+1)), title_scale[0, i], title_scale[0, i], 0);

//2
if title_word>1 for (i=0; i<title_pos[1]+1; i+=1) draw_text_transformed(title_ox[1]+string_width(string_hash_to_newline(string_copy(title_string[1], 0, i)))-100, 132, string_hash_to_newline(string_char_at(title_string[1], i+1)), title_scale[1, i], title_scale[1, i], 0);

//1
if title_word>2 for (i=0; i<title_pos[2]+1; i+=1) draw_text_transformed(title_ox[2]+string_width(string_hash_to_newline(string_copy(title_string[2], 0, i)))-56, 132, string_hash_to_newline(string_char_at(title_string[2], i+1)), title_scale[2, i], title_scale[2, i], 0);
//Go
if title_word>3 draw_sprite_ext(sprSSHudGo,0,title_ox[3]+string_width(string_hash_to_newline(string_copy(title_string[3], 0, 0)))+2, 132,title_scale[3, 0], title_scale[3, 0],0,c_white,1);

}


//if title_word>4 for (i=0; i<title_pos[5]+1; i+=1) draw_text_transformed(title_ox[5]+string_width(string_copy(title_string[5], 0, i))-56, 160, title_scale[title_word, title_pos[title_word]], title_scale[5, i], title_scale[5, i], 0);

/* */
///Closing
draw_set_font(objResources.fontHud);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    
    var stoneNumber;
    
    if objProgram.in_past {
        stoneNumber =objProgram.special_past_current_level;
    } else {
        stoneNumber =objProgram.special_future_current_level;
    }
    
    var stoneNumberString;
    switch stoneNumber {
        case 1: stoneNumberString = "1st" break;
        case 2: stoneNumberString = "2nd" break;
        case 3: stoneNumberString = "3rd" break;
        case 4: stoneNumberString = "4th" break;
        case 5: stoneNumberString = "5th" break;
        case 6: stoneNumberString = "6th" break;
        case 7: stoneNumberString = "7th" break;
    }
    
    
if closing == 2 {
    
     if objProgram.in_past {
     
        if objProgram.special_past_current_level >= 7 {
            draw_text(213,80,string_hash_to_newline("Now You Have All the Time Stones"));
        } else  
        switch objGameData.character_id[0] {
            case 1:
                draw_text(213,80,string_hash_to_newline("Sonic Got the "+stoneNumberString+" Time Stone"));
            break;
            case 2:
                draw_text(213,80,string_hash_to_newline("Tails Got the "+stoneNumberString+" Time Stone"));
            break;
            case 3:
                draw_text(213,80,string_hash_to_newline("Knuckles Got the "+stoneNumberString+" Time Stone"));
            break;
        }
     }
     else {
        if objProgram.special_future_current_level >= 7 {
            draw_text(213,80,string_hash_to_newline("Now You Have All the Chaos Emeralds"));
            if objGameData.character_id[0] == 1
                draw_text(213,94,string_hash_to_newline("Jump and Hold B and A to Turn Into Super Sonic"));
        } else
        switch objGameData.character_id[0] {
            case 1:
                draw_text(213,80,string_hash_to_newline("Sonic Got the "+stoneNumberString+" Chaos Emerald"));
            break;
            case 2:
                draw_text(213,80,string_hash_to_newline("Tails Got the "+stoneNumberString+" Chaos Emerald"));
            break;
            case 3:
                draw_text(213,80,string_hash_to_newline("Knuckles Got the "+stoneNumberString+" Chaos Emerald"));
            break;
        }
     }
} else if closing == 1 {

    draw_text(213,80,string_hash_to_newline("Metal Sonic Wins"));

}

/* */
/*  */
