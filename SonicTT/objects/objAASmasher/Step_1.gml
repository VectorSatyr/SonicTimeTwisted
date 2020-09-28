/// @description  Handle state
switch state
{
case 0: // falling
    height += 16;
    if height>=max_height {height = max_height; state = -1; alarm[0] = 30; audio_play_sound(sndSmash, 1, 0);}
    break;

case 1: // rising
    height -= 2;
    if height<=0 {height = 0; state = -1; alarm[1] = 100;}
    break;
}

var __b__;
__b__ = action_if_variable(height, 1, 2);
if __b__
{
image_yscale = height;
}
