/// @description Orbit
orbit_speed = (active) ?
	min(orbit_speed + orbit_acceleration, orbit_max_speed) :
	max(orbit_speed - orbit_acceleration, orbit_min_speed);

for (var i = 0; i < total_players; ++i)
{
	if (target_id[i] != noone)
	{
		target_dir[i] += orbit_speed;
		target_id[i].x = xstart + lengthdir_x(target_len[i], target_dir[i]);
		target_id[i].y = ystart + lengthdir_y(target_len[i], target_dir[i]);

		with (target_id[i])
		{
			player_update_water();
			player_collision_object();

			// detached
			if (state != player_state_object)
			{
				other.target_id[player_id] = noone;
				other.target_ignore_time[player_id] = 10;
				continue;
			}

			// jump out
			if (
				input_check_pressed(cACTION) and 
				not player_collision_ceiling(offset_y + 5)
			)
			{
				player_is_jumping();
				other.target_id[player_id] = noone;
				other.target_ignore_time[player_id] = 10;
				continue;
			}
		}
	}
}

for (var n = 0; n < total_nodes; ++n)
{
	node_dir[n] += (orbit_speed + node_speed[n]);
	node_x[n] = xstart + lengthdir_x(node_len[n], node_dir[n]);
	node_y[n] = ystart + lengthdir_y(node_len[n], node_dir[n]);
}