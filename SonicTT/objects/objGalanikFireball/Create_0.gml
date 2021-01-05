/// @description Initialize
event_inherited();
image_speed = 0;
remove = 0;
state = "approaching";
fire = false;
platformId = noone;

track_speed = 2.5;
growth_rate = 0.0125;
max_scale = 1.5;
fade_rate = 0.125;

blend_sprite = sprGalanikFireBallAdd;
blend_scale_mod = 1.2;
blend_xscale = image_xscale * blend_scale_mod;
blend_yscale = image_yscale * blend_scale_mod;
blend_alpha_mod = 0.5;
blend_alpha = image_alpha * blend_alpha_mod;

lightning_sprite = sprGaanikFireBallLightingAdd;
lightning_subimg = 0;
lightning_anim_frames = 4;
lightning_anim_speed = 0.25;
lightning_scale_mod = 1.2;
lightning_xscale = image_xscale * lightning_scale_mod;
lightning_yscale = image_yscale * lightning_scale_mod;
lightning_alpha_mod = 0.5;
lightning_alpha = image_alpha * lightning_alpha_mod;

audio_play_sound(sndGalacnikAttack, 2, false);

event_user(0); // grow