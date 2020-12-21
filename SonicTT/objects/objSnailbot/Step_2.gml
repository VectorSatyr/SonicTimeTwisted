/// @description Animate
if (frozen)
{
	freeze_ox = (alarm[0] > 0 and alarm[0] < 45) ? 
		(-1 + (((90 - alarm[0]) div 4) mod 2) * 2) : 0;
}
else
{
	image_xscale = -facing_sign;
}