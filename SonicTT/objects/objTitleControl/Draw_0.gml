/// @description  Render Names

// fade for menu
draw_set_alpha(screenAlpha);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
    
// setup
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(objResources.fontHud);

// score / time / rings string
switch name {
case 0: case 1: case 2:
    draw_set_color(c_black);
    draw_set_alpha(logoAlpha);
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_sprite_ext(sprOverboundLogo,0,__view_get( e__VW.XView, 0 )+213,__view_get( e__VW.YView, 0 )+120,1,1,0,c_white,logoAlpha);
break;
case 3: draw_text_color(__view_get( e__VW.XView, 0 )+213,__view_get( e__VW.YView, 0 )+120,string_hash_to_newline("BRYCE STOCK \"OVERBOUND\""),c_white,c_white,c_yellow,c_yellow,1); break;
case 4: draw_text_color(__view_get( e__VW.XView, 0 )+213, __view_get( e__VW.YView, 0 )+120, string_hash_to_newline("HINCHY"),c_white,c_white,c_yellow,c_yellow,1) break;
case 5: draw_text_color(__view_get( e__VW.XView, 0 )+213, __view_get( e__VW.YView, 0 )+120, string_hash_to_newline("JOEVAN SALMON-JOHNSON \"VECTORSATYR\""),c_white,c_white,c_yellow,c_yellow,1) break;
case 6: draw_text_color(__view_get( e__VW.XView, 0 )+213, __view_get( e__VW.YView, 0 )+120, string_hash_to_newline("MARC \"DERZOCKER\""),c_white,c_white,c_yellow,c_yellow,1) break;
case 7: draw_text_color(__view_get( e__VW.XView, 0 )+213, __view_get( e__VW.YView, 0 )+120, string_hash_to_newline("DEVIN REEVES \"MERCURY\""),c_white,c_white,c_yellow,c_yellow,1)break;
case 8: draw_text_color(__view_get( e__VW.XView, 0 )+213, __view_get( e__VW.YView, 0 )+120, string_hash_to_newline("SHANE \"SPARKS\""),c_white,c_white,c_yellow,c_yellow,1) break;
case 12: if pauseState == 3 draw_text_color(__view_get( e__VW.XView, 0 )+213, __view_get( e__VW.YView, 0 )+228, string_hash_to_newline("PRESS START"),c_white,c_white,c_yellow,c_yellow,1); start=true; break;
}

draw_set_halign(fa_center);
draw_set_color(c_yellow);
if pauseState == 0 {
    draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+75, string_hash_to_newline("PLAY"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 1 draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("MAP KEYS OR GAMEPAD"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 2 draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("SCREEN SIZE"),c_white,c_white,c_yellow,c_yellow,1);
    if pauseState != 4 draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("ENABLE GAMEPAD F1"),c_white,c_white,c_yellow,c_yellow,1);
    draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+139, string_hash_to_newline("EXIT GAME"),c_white,c_white,c_yellow,c_yellow,1);
    
    draw_sprite_ext(sprLevelSelect,image_index,__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+81+pauseOffset,1,1,0,c_white,1);
}

if pauseState == 1 && inputFlash <= .5 { // set controls
    switch controlState {
        case 0:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("UP"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 1:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("DOWN"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 2:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("LEFT"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 3:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("RIGHT"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 4:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("A"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 5:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("B"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 6:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("C"),c_white,c_white,c_yellow,c_yellow,1);
        break;
        case 7:
            draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+91, string_hash_to_newline("START"),c_white,c_white,c_yellow,c_yellow,1);
        break;
    }
    

}

if pauseState == 2 && inputFlash <= .5 {

    switch objScreen.window_state {
    case 1:
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("WINDOW"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case 2:
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("WINDOW 2X"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case 3:
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("WINDOW 3X"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case 4:
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("FULLSCREEN"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    
    }
}

if pauseState == 4 && inputFlash <= .5 {

    switch gamepadSupport {
    case false:
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("GAMEPAD DISABLED"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    case true:
        draw_text_color(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("GAMEPAD ENABLED"),c_white,c_white,c_yellow,c_yellow,1);
    break;
    }
}
draw_set_color(c_white);


