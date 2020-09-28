action_set_relative(1);
name += 1;
var __b__;
__b__ = action_if_variable(name, 12, 1);
if __b__
{
{
action_set_relative(0);
action_set_alarm(65, 0);
action_set_relative(1);
}
}
__b__ = action_if_variable(name, 9, 0);
if __b__
{
action_sound(bgmTitle, 0);
}
if name > 2 && name < 9 {
    audio_play_sound(sndTock,0,0);
}

action_set_relative(0);
