// player_is_transforming()

// animate
animation_new = "transform";
timeline_speed = 1;
image_angle = 0;

// states and flags
state = player_state_transform;
spinning = false;
jumping = false;
jump_action = false;

audio_play_sound(sndTransformSuper,0,0);

// hide shield
with shield visible = false;
