/// @description  Emit Snow

/*
x_offset = 16
y_offset = 16
x_range = 32
y_range = 0
angle_offset = 90
angle_range = 15
velocity = 8

ticks = 0
interval = 8
enabled = 1
*/

if (!enabled) {
    exit
}

if (!audio_is_playing(sndFireBlow))
{
  audio_play_sound(sndFireBlow, 1, 0)
}

ticks++
if (ticks < interval) {
    exit
}

ticks = 0
var x_origin, y_origin, angle, new_particle;
x_origin = x + x_offset + random(x_range) - (1 / 2) * x_range
y_origin = y + y_offset + random(y_range) - (1 / 2) * y_range
angle = angle_offset + random(angle_range) - (1 / 2) * angle_range

new_particle = instance_create(x_origin, y_origin, objSnowParticle)

new_particle.xspeed = velocity * cos(degtorad(angle))
new_particle.yspeed = velocity * sin(degtorad(angle))

/* */
/*  */
