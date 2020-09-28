var xran =random(200)-100;
var yran =random(60)-20;
instance_create(x+xran+40,y+yran,objExplosionCluster);
audio_play_sound(sndBombExplosion,1,false);

with objMetallixPlatform {

    instance_destroy();
}

with objMetallixController state = 4;



