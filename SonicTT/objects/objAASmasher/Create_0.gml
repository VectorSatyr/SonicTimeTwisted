action_inherited();
sprite_index = sprAASmasherMask;
remove = 0;
harmful = true;
state = 0;
height = 0;
max_height = 192;
/// Setup audio
audio_emitter = audio_emitter_create();
audio_emitter_falloff(audio_emitter, objScreen.width*0.125, objScreen.width*0.25, 1);

