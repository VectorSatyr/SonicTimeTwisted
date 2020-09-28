/// @description  Draw Hud
//if objScreen.paused exit;

d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);

// score / time / rings string
draw_set_font(objResources.fontHud);

if !objProgram.paused {
// lives setpiece
draw_sprite(sprLives, character_id[view_current], 0+16, 0+__view_get( e__VW.HView, 0 )-24);

// Hud Graphic
if not objScreen.split_screen draw_sprite(sprHud, 0, 0+16, 0+9);
draw_sprite(sprHud, 1+(image_index mod 2)*(objSSLevel.timer < 3600), 16, 25-(16*objScreen.split_screen));
draw_sprite(sprHud, 3+(image_index mod 2)*(not objSSPlayer.rings), 16, 41-(16*objScreen.split_screen));

// lives string
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_right);
draw_set_font(objResources.fontLives);
draw_text(0+94, 0+__view_get( e__VW.HView, view_current )-12, string_hash_to_newline(objGameData.player_lives[view_current]));

// score / time / rings string
draw_set_font(objResources.fontHud);
if not objScreen.split_screen draw_text(112, 8, string_hash_to_newline(objGameData.player_score[view_current]));
draw_text(88, 40-(16*objScreen.split_screen), string_hash_to_newline(objSSPlayer.rings));
draw_set_halign(fa_left);
draw_text(56+timeOffset, 24-(16*objScreen.split_screen), string_hash_to_newline(time_stamp));


// Progress bar
draw_set_alpha(0.25);
draw_set_color(c_white);
draw_line_width(128, 224, 426 - 16, 224, 4);
draw_set_alpha(1);

var xmetalprog = 128 + objSSMetalSonic.progress * 280;
if metalProgDisplay > xmetalprog +2{
    metalProgDisplay-=2;
}
else if metalProgDisplay < xmetalprog -2 {
    metalProgDisplay+=2;
}

var xplayerprog = 128 + objSSPlayer.progress * 280;
if playerProgDisplay > xplayerprog +2{
    playerProgDisplay-=2;
}
else if playerProgDisplay < xplayerprog -2{
    playerProgDisplay+=2;
}
draw_sprite_ext(sprRacerIcon, 3, 128 + objSSMetalSonic.progress * 280, 224, 1, 1, 0, c_white, 1);
draw_sprite(sprRacerIcon, objGameData.character_id[0]-1, 128 + objSSPlayer.progress * 280, 224);
//draw_sprite_ext(sprRacerIcon, 3, metalProgDisplay, 224, 1, 1, 0, c_white, 1);
//draw_sprite(sprRacerIcon, objGameData.character_id[0]-1, playerProgDisplay, 224);

} else {
    draw_set_color(c_white)
    draw_rectangle(0,0,426,240,false);
    draw_set_halign(fa_center);

if pauseState == 1 && inputFlash <= .5 { // set controls
    switch controlState {
        case 0:
            draw_text_color(213, 123, string_hash_to_newline("UP"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 1:
            draw_text_color(213, 123, string_hash_to_newline("DOWN"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 2:
            draw_text_color(213, 123, string_hash_to_newline("LEFT"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 3:
            draw_text_color(213, 123, string_hash_to_newline("RIGHT"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 4:
            draw_text_color(213, 123, string_hash_to_newline("A"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 5:
            draw_text_color(213, 123, string_hash_to_newline("B"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 6:
            draw_text_color(213, 123, string_hash_to_newline("C"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 7:
            draw_text_color(213, 123, string_hash_to_newline("START"),c_white,c_white,c_yellow,c_yellow,1);
        break;
    }
}

if pauseState == 2 && inputFlash <= .5 {

    switch objScreen.window_state {
    case 1:
        draw_text_color(213, 139, string_hash_to_newline("WINDOW"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case 2:
        draw_text_color(213, 139, string_hash_to_newline("WINDOW 2X"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case 3:
        draw_text_color(213, 139, string_hash_to_newline("WINDOW 3X"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case 4:
        draw_text_color(213, 139, string_hash_to_newline("FULLSCREEN"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    }
}

    var viewSize = "FULLSCREEN"
    draw_text_color(213, 107, string_hash_to_newline("CONTINUE"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 1 draw_text_color(213, 123, string_hash_to_newline("MAP KEYS OR GAMEPAD"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 2 draw_text_color(213, 139, string_hash_to_newline("SCREEN SIZE"),c_white,c_white,c_yellow,c_yellow,1);
    draw_sprite_ext(sprLevelSelect,image_index,213, 113+pauseOffset,1,1,0,c_white,1);
}

