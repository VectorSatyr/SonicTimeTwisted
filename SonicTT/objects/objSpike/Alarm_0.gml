/// @description play sound

//if hide == true && !audio_is_playing(sndSpikeMove)

//audio_play_sound(sndSpikeMove,0,false);

var __b__;
__b__ = action_if_variable(moving, true, 0);
if __b__
{
action_set_alarm(64, 0);
}
