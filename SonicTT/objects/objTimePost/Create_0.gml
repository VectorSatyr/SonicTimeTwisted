/// @description Initialize
event_inherited();
image_speed = 0;
reaction_script = player_reaction_time_post;
player_id = noone;
tag = 0;
radius = 10;
default_cancel_speed = 8;
default_reset_time = 24;
time_travel_reset_time = 40;

with (objProgram)
{
	if (in_past) other.sprite_index = sprFuturePost;
}