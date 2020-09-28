/// @description  Control player
with player_id
{

    // ground motion
    xspeed = 0.5*other.image_xscale;
    
    // update position
    if not player_movement_ground() {other.player_id = noone; return false;}
    
    // falling
    //if not landed {other.player_id = noone; return player_is_falling();}
    if other.image_xscale == 1 {  
        if bbox_left > other.bbox_right { other.player_id = noone; return player_is_falling(); }
    }
    else {
        if bbox_right < other.bbox_left { other.player_id = noone; return player_is_falling(); }
    }
    // release control if not on flipper
    if (terrain_id!=other.id) {other.player_id = noone; return player_is_rolling();}

    // fling upward
    if input_check_pressed(cACTION)
    {
        // states and flags
        state = player_state_fall;
        spinning = false;
        rolling_jump = false;
        jump_action = true;

        // movement and collision
        xspeed = (x-other.x)*0.15;
        yspeed = -14;

        // set air state
        player_in_air();

        // release control and animate
        other.timeline_running = true;
        other.timeline_position = 0;
        other.player_id = noone;
        
        audio_play_sound(sndFlipper,1,false);
    }
}

