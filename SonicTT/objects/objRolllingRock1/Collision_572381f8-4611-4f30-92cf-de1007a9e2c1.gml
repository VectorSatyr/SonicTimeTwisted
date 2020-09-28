with instance_create(x+20,y,objSmallRock) {

    direction = 0;
    reaction_script=noone;

}
with instance_create(x-20,y,objSmallRock) {

    direction = 120;
    reaction_script=noone;

}
with instance_create(x,y+32,objSmallRock) {

    direction = 240;
    reaction_script=noone;

}

audio_play_sound(sndRockSmash,4,1);
instance_destroy();




instance_destroy();

