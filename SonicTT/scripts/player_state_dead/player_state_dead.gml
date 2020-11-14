/// player_state_dead()

if (alarm[0] <= 0)
{
	return player_reset();
}

y += yspeed;
yspeed += gravity_force;