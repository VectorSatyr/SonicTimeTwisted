if win != 1 {

    slot_pos[2]=floor(slot_pos[2]);
    audio_play_sound(sndAASlotRobotnik,4,0);
    
}else{

    slot_pos[2]=win_icon;
    
    if win_icon != 10 {
        audio_play_sound(sndAASlotWin,4,0);
    }
    else audio_play_sound(sndAASlotRobotnik,4,0);
    
slot_state[2]=1;

with player_id
{

        
//set result
if other.win_icon <= 6 {
    if other.win_icon == 6
        other.win_icon = 0;
    player_get_shield(other.win_icon);
    
}else
switch other.win_icon {

case 7:
    player_get_rings(50); break;

case 8:
    if not superform {superspeed = 1200; player_reset_physics(); play_jingle(bgmSpeedUp, true); } break;

case 9:
    if not superform player_get_invincibility(); break;

case 10:
    if not superform && objGameData.rings[0] > 0 
        player_hit(0, sndHurt)
        else audio_play_sound(sndHurt,4,0);
        ; break;

case 11:
    if not superform && objGameData.rings[0] > 0 
        player_hit(0, sndHurt)
        else audio_play_sound(sndHurt,4,0);
break;

}

}

}

with player_id { player_is_falling(); }

player_id = noone;
active = false;
alarm[11]=20;


