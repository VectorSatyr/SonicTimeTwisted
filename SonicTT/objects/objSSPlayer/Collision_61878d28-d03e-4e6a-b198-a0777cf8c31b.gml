script_execute(PlayerHarmfulCollision,other,0,0,0,0);
audio_play_sound(sndBombExplosion,1,false);

with other {
    instance_create(x,y,obj3DExplosion);
    instance_destroy();
}
 




