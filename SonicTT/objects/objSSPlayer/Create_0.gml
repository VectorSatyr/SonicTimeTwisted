with (other) {
instance_create(x,y,objSSCamera);
rings=0;
move_direction = 90;
move_speed = 0;
bounce_timer = 0;
radius = 24;
z = 24;//32
zground = z;
zspeed = 0;
onGround = true;
max_radius = 24;
bump_radius = max_radius;
jumping = false;
xaxis = 0;
yaxis = 0;
gravity_force=0.21875;
jump_force =4;
jump_release=false;
noTrack=0;
hit = false;
started = false;
closing = false;
progress = 0;
// kill states: 1 death by ring, 2 death by fallout, 3 death by loss
kill=0;
//shadow=instance_create(x,y,obj3DShadow);
shadow=noone;
//with shadow { parent = other; scale = .15;}
invincible=0;



}
