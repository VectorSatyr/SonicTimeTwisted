with instance_create(x,y,objSSMoleMissile) {

    direction=other.direction;

}
if shot < 2 {
    shot+=1;
    alarm[0]=30;
} else {

    shot = 0;
    alarm[0]=300;
}
audio_play_sound(sndBombLaunch,1,false);

