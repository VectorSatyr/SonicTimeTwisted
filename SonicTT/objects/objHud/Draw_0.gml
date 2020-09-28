/// @description  Render HUD

// lives setpiece
draw_sprite(sprLives, character_id[view_current], __view_get( e__VW.XView, view_current )+16, __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, 0 )-24);

// Hud Graphic
if not objScreen.split_screen draw_sprite(sprHud, 0, __view_get( e__VW.XView, view_current )+14, __view_get( e__VW.YView, view_current )+9);
draw_sprite(sprHud, 1+(image_index mod 2)*(objLevel.timer<3600), __view_get( e__VW.XView, view_current )+14, __view_get( e__VW.YView, view_current )+25-(16*objScreen.split_screen));
draw_sprite(sprHud, 3+(image_index mod 2)*(not objGameData.rings[view_current]), __view_get( e__VW.XView, view_current )+14, __view_get( e__VW.YView, view_current )+41-(16*objScreen.split_screen));

// lives string
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_right);
draw_set_font(objResources.fontLives);
draw_text(__view_get( e__VW.XView, view_current )+94, __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )-12, string_hash_to_newline(objGameData.player_lives[view_current]));

// score / time / rings string
draw_set_font(objResources.fontHud);
if not objScreen.split_screen draw_text(__view_get( e__VW.XView, view_current )+112, __view_get( e__VW.YView, view_current )+8, string_hash_to_newline(objGameData.player_score[view_current]));
draw_text(__view_get( e__VW.XView, view_current )+88, __view_get( e__VW.YView, view_current )+40-(16*objScreen.split_screen), string_hash_to_newline(objGameData.rings[view_current]));
draw_set_halign(fa_left);
draw_text(__view_get( e__VW.XView, view_current )+56+timeOffset, __view_get( e__VW.YView, view_current )+24-(16*objScreen.split_screen), string_hash_to_newline(time_stamp));


// TODO Remove FPS
//draw_text(view_xview[view_current]+400,view_yview[view_current]+24, fps);

//white bg for pause
draw_set_alpha(white)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
draw_set_alpha(image_alpha);
draw_set_halign(fa_center);
if objProgram.paused {
    var viewSize = "FULLSCREEN"
    draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("CONTINUE"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 1 draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("MAP KEYS OR GAMEPAD"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 2 draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+139, string_hash_to_newline("SCREEN SIZE"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 3 draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+155, string_hash_to_newline("RESTART GAME"),c_white,c_white,c_yellow,c_yellow,1);
    draw_sprite_ext(sprLevelSelect,image_index,__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+113+pauseOffset,1,1,0,c_white,1);
}

if pauseState == 1 && inputFlash <= .5 { // set controls
    switch controlState {
        case 0:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("UP"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 1:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("DOWN"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 2:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("LEFT"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 3:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("RIGHT"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 4:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("A"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 5:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("B"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 6:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("C"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 7:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("START"),c_white,c_white,c_yellow,c_yellow,1);
        break;
    }
}

if pauseState == 2 && inputFlash <= .5 {

    switch objScreen.window_state {
        case 1:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+139, string_hash_to_newline("WINDOW"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 2:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+139, string_hash_to_newline("WINDOW 2X"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 3:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+139, string_hash_to_newline("WINDOW 3X"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 4:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+139, string_hash_to_newline("FULLSCREEN"),c_white,c_white,c_yellow,c_yellow,1);
        break;
    }
}

if pauseState == 3 && inputFlash <= .5 {
    if shouldExit {
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+155, string_hash_to_newline("CONFIRM?"),c_white,c_white,c_yellow,c_yellow,1);
    } else {
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+155, string_hash_to_newline("CANCEL"),c_white,c_white,c_yellow,c_yellow,1);
    }
}

