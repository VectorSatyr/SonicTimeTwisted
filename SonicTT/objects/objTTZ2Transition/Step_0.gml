/// @description  Get transition mode
switch mode
{
case 1: // fade out
    if (screenOffset>=-64) {if next_room>-1 room_goto(next_room); mode = -1; break;}
    screenOffset +=4;
    break;

case -1: // fade in
    if screenOffset>=532 {
    // setup titlecard
        with instance_create(0, 0, objTitlecard)
        {
            title_string[0] = "Tidal";
            title_string[1] = "Tubes";
            title_string[2] = "Zone";
            if objProgram.in_past
                 title_string[3] = "ACT2 PAST";
            else title_string[3] = "ACT2 FUTURE";
            event_perform(ev_other, ev_room_start);
            mode = 1;
        }
        instance_destroy(); break;
    
    }
    screenOffset +=4;
    break;
}


if !audio_is_playing(sndQuake) {
    audio_play_sound(sndQuake,10,false);
}

with objCamera {
    top=0;
    bottom=room_height;
    left=0;
    right=room_width;
    shake = true;
}

