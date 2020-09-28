/// @description  Launch bombs
with instance_create(x+24, y, objVVBomb) direction = 355;
with instance_create(x-24, y, objVVBomb) direction = 185;

// sound
audio_play_sound(sndBombLaunch, 4, 0);

action_set_alarm(115, 2);
