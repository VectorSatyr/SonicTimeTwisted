with laser {
    state=1;
    audio_play_sound(sndLaserShot,4,0);
     
    x=gunId.x+xoffset;
    y=gunId.y+yoffset;
    
    if gunId.dirX == 1 {
        y+=image_angle/12;
    } else
        y+=angle_wrap(image_angle+180)/12;

}
alarm[1]=15;

