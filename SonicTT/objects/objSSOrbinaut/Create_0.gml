action_inherited();
/// Initialize enemy
var i;
image_speed = 0;
offscreen_enabled = true;

// states and flags
state = 0;

// physics
max_speed = -0.5;
angle = 0;
shift = 0;

// orbs
for (i=0; i<3; i+=1) orbs[i] = instance_create(x, y, objSSOrbinautOrb);

var __b__;
__b__ = action_if_variable(objProgram.in_past, true, 0);
if __b__
{
action_sprite_set(sprLegonaut, 0, 0);
}
z=32;
mode=0;

