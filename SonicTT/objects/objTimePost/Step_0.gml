/// @description  Control player

// custom player state
with player_id
{
    // rotate around post
    x = other.x+sine[angle_wrap(timeline_position*30)]*10*facing;
    if timeline_position>3 and timeline_position<10 depth = other.depth+1; else
    depth = 0;

    // activate on end of animation
    if timeline_position>=12
    {
        // reset time post
        other.alarm[0] = 40;
        other.player_id = noone;

        // confirm time travel
        objProgram.spawn_tag = other.tag;
        objProgram.spawn_time = objLevel.timer;
        objProgram.time_traveling = facing;

        // camera
        camera.alarm[0] = 128;

        // audio
        if objProgram.in_past audio_play_sound(sndChantFuture, 1, false); else
        audio_play_sound(sndChantPast, 1, false);

        // time travel
        return player_is_exiting();
    }

    // cancelling
    if (input_axis_x() == -facing)
    {
        // reset time post
        other.alarm[0] = 24;
        other.player_id = noone;

        // animate
        animation_new = "brake";
        timeline_speed = 1;

        // movement and collision
        x = other.x;
        xspeed = 8*facing;

        // camera
        camera.alarm[0] = -1;

        // other
        depth = 0;

        // running
        return player_is_running();
    }

    // jumping
    if input_check_pressed(cACTION)
    { 
        // reset time post
        other.alarm[0] = 24;
        other.player_id = noone;

        // movement and collision
        x = other.x;
        xspeed = 8*facing;

        // camera
        camera.alarm[0] = -1;

        // other
        depth = 0;

        // running
        return player_is_jumping();
    }
}

