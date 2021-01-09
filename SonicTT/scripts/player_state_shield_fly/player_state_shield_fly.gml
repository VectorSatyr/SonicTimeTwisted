/// @description player_state_shield_fly()

// flight direction
var target_direction = point_direction(0, 0, input_axis_x(), input_axis_y());
var diff = angle_difference(target_direction, shield.direction);
shield.direction = angle_wrap(
	shield.direction + min(4, abs(diff)) * sign(diff)
);

// update speed
xspeed = cosine[shield.direction] * 4;
yspeed = -sine[shield.direction] * 4;

// update position
if (not player_movement_air()) return false;

// landing
if (landed) return player_is_running();

// fall if: wall was hit; no longer in wind shield; or time is up
if (
	wall_direction != 0 or player_collision_ceiling(offset_y+5) or
	shield == noone or shield_type != 5 or alarm[0] <= 0
)
{
	return player_is_falling();
}