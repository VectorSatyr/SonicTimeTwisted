/// @description  move off screen and add explosion
explosion = instance_create(x, y, objExplosionGroupNoSound);
audio_play_sound(sndBombExplosion,1,false);
direction = 64;
speed = 6;
gravity = 0.24;

