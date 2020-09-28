/// @description  Create explosion
with instance_create(x-2, y+5, objVVBombExplosion) depth = other.depth-1;

// sound
audio_play_sound(sndBombExplosion, 0, false);

