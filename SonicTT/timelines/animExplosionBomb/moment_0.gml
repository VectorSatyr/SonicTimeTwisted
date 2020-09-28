/// @description  Create explosion
with instance_create(x-2, y+5, objVVBombExplosion) depth = other.depth-1;

// sound
//audio_stop_sound(sndBombExplosion);
audio_play_sound(sndBombExplosion, 2, false);

