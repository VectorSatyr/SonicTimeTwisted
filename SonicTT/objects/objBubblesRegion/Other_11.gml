/// @description Release
active = false;
for (var i = 0; i < total_players; ++i)
{
	with (target_id[i])
	{
		xspeed = other.orbit_speed;
		angle = angle_wrap(other.target_dir[player_id] + 90);
		relative_angle = angle_wrap(angle - gravity_angle());
		player_is_falling();
	}
	target_id[i] = noone;
}