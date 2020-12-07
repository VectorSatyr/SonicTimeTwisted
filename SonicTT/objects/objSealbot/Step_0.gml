/// @description Patrol
if (not frozen)
{
	var in_range = false;

	if (state != "turning" and (facing_sign == wall_sign or facing_sign == cliff_sign))
	{
		state = "turning";
		x_speed = 0;
		wall_sign = 0;
		cliff_sign = 0;
		timer = 10;
	}
	else
	{
		switch (state)
		{
		case "patrolling":
			var x1 = x - patrol_range_x;
			var y1 = y - patrol_range_y;
			var x2 = x + patrol_range_x;
			var y2 = y + patrol_range_y;
			with (objPlayer)
			{
				if (point_in_rectangle(x, y, x1, y1, x2, y2))
				{
					diff = sign(x - other.x);
					in_range = (diff == other.facing_sign);
				}
			}
			if (in_range)
			{
				state = "charging";
				x_speed = 0;
				timer = 30;
				event_user(1); // charge
				break;
			}
			--timer;
			if (timer <= 0)
			{
				state = "braking";
				timer = 0;
			}
			else if (abs(x_speed) < speed_cap)
			{
				x_speed = max(abs(x_speed) + acceleration, speed_cap) * facing_sign;
			}
			break;

		case "braking":
			if (x_speed == 0)
			{
				state = "turning";
				x_speed = 0;
				wall_sign = 0;
				cliff_sign = 0;
				timer = 10;
			}
			if (abs(x_speed) > 0)
			{
				x_speed -= min(abs(x_speed), deceleration) * sign(x_speed);
			}
			break;

		case "turning":
			--timer;
			if (timer <= 0)
			{
				state = "patrolling";
				facing_sign = -facing_sign;
				timer = 60;
				event_user(0); // idle
			}
			break;

		case "charging":
			--timer;
			if (timer <= 0)
			{
				state = "dashing";
				timer = 120;
				x_speed = charging_speed * facing_sign;
				event_user(3); // dashing
			}
			break;
		case "dashing":
			var diff;
			with (objPlayer)
			{
				diff = sign(x - other.x);
				in_range = (diff == other.facing_sign);
			}
			--timer;
			if (not in_range or timer <= 0)
			{
				state = "braking";
				timer = 0;
				event_user(2); // rise
			}
			break;
		}
	}
}