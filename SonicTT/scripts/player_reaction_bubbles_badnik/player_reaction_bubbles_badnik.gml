/// player_reaction_bubbles_badnik(local_id)
var local_id = argument0;
var result = false;

if (
	local_id.active and local_id.target_id[player_id] != id and 
	local_id.target_ignore_time[player_id] <= 0
)
{
	// states and flags
	state = player_state_object;
	spinning = true;
	jumping = false;
	jump_action = true;
	rolling_jump = true;
	landed = false;
	if (character_id == 3) glide_falling = false;

	// animate
	animation_new = "spin";
	timeline_speed = 0.25;
	image_angle = 0;

	// setup region
	local_id.total_players = max(local_id.total_players, player_id + 1);
	local_id.target_id[player_id] = id;
	local_id.target_len[player_id] = point_distance(
		x, y, local_id.x, local_id.y
	);
	local_id.target_dir[player_id] = angle_wrap(
		point_direction(local_id.x, local_id.y, x, y)
	);
}

return result;

/*
// ignore if already activated
if (argument0.allow_collision == false || argument0.active==true) return false;

// give control to bubbles
argument0.active = true;
argument0.player_id = id;

// animate
animation_new = "spin";
timeline_speed = 0.25;
image_angle = 0;

// states and flags
state = player_state_object;
spinning = true;
jumping = false;
jump_action = true;
rolling_jump = true;
landed = false;


// Angle and Distance for orbiting
//argument0.angle=point_direction(x,y,argument0.x,argument0.y);
argument0.radius=point_distance(x,y,argument0.x,argument0.y);
    
// character values
if character_id==3 glide_falling = false;

// hard collision found
return true;