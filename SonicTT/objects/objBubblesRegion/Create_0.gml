/// @description Initialize
event_inherited();
image_alpha = 0;
reaction_script = player_reaction_bubbles_badnik;
active = false;
orbit_acceleration = 0.0625;
orbit_min_speed = 0.25;
orbit_max_speed = 2;
orbit_speed = orbit_min_speed;
orbit_len = 48;
orbit_range = 64;
fade_alpha = 0.125;
fade_rate = 0.25;

total_players = 2;
for (var i = 0; i < total_players; ++i)
{
	target_id[i] = noone;
	target_len[i] = 0;
	target_dir[i] = 0;
	target_ignore_time[i] = 0;
}

total_nodes = 24;
node_separation = 32;
var os = 0;
for (var n = 0; n < total_nodes; ++n)
{
	os += (node_separation + random(node_separation));
	node_frame[n] = 1 + irandom(4);
	node_speed[n] = (5 - node_frame[n]) + random(((5 - node_frame[n]) / 5) * 2);
	node_len[n] = orbit_len + random(orbit_range);
	node_dir[n] = 45 + os
	node_x[n] = xstart + lengthdir_x(node_len[n], node_dir[n]);
	node_y[n] = ystart + lengthdir_y(node_len[n], node_dir[n]);
}