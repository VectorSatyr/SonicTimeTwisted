/// @description Freeze
switch (state)
{
case "pouncing":
	if (not frozen)
	{
		x_speed = 0;
		y_speed = 0;
	}
	break;

default:
	alarm[0] = 180;
}
frozen = true;
instance_destroy(other);