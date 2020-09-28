if in_view(self, 0) && alarm[0] == -1 {

    alarm[0] = 250;

}

if alarm[0] == 240 {

    image_index=0;

}
if alarm[0] == 10 {
    image_index=1;
} 
else if alarm[0] == 0 {

    instance_create(x,y-4,objArrowParent);
    if objProgram.in_past == false
        audio_play_sound(sndLaserShot,4,0);

}

