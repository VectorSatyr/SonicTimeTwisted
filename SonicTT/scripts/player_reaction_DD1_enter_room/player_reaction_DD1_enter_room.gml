//player_reaction_start_dd1

if objProgram.temp_xview_offset!=0 {
    xspeed=objProgram.temp_xspeed;
    yspeed=objProgram.temp_yspeed;
    state=objProgram.temp_state;
    animation=objProgram.temp_animation;
    spinning=objProgram.temp_spinning;
    timeline_position=objProgram.temp_timeline_position;
    y=y-objProgram.temp_y;
    __view_set( e__VW.YView, 0, y-objProgram.temp_yview_offset );
    __view_set( e__VW.XView, 0, x-objProgram.temp_xview_offset );
}
with objLevel started = true;
with objTitlecard mode = 3;
with argument0 instance_destroy();

