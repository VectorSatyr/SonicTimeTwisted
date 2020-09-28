var __b__;
__b__ = action_if_variable(active, true, 0);
if __b__
{
{
/// Plane Motion

 with objPlayer {

if other.x -4 > x
    other.x += xspeed;

if other.x +14 < x
    other.x += xspeed;    



if landed == false
if other.y < y
other.y +=1;
}

//Rebound  
/*if rebound {

    y+=yspeed;
    yspeed -=.1;
    if yspeed <= 0 {
        rebound = false;
        yspeed = 3;
    }
}*/


y = floor(y);



/* */
}
}
/// reset if player x is less than plane
if instance_exists(objLevel.player[0]) {
    if x-320 > objLevel.player[0].x {
        x = xstart;
        y = ystart;
    }
}

if in_view(view_current,128) { 
if not audio_is_playing(sndPropeller)
    audio_play_sound(sndPropeller, 4, 0);
}

/* */
/*  */
