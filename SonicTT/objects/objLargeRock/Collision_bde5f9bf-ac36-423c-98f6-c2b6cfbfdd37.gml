with instance_create(x+20,y,objSmallRock) {

    direction = 0;

}
with instance_create(x-20,y,objSmallRock) {

    direction = 120;

}
with instance_create(x,y+32,objSmallRock) {

    direction = 240;

}

audio_play_sound(sndRockSmash,2,0);
instance_destroy();



