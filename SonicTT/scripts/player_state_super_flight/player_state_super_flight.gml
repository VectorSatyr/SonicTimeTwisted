/// player_state_super_flight()

if (not objLevel.started) return false;
if (player_collision_object()) return false;

var view = 0;
with (camera) view = view_id;
var cam = view_get_camera(view);
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var ch = camera_get_view_height(cam);

if (input_check(cUP) and cy < y)
{
	if (yspeed > -4) yspeed -= acceleration;
}
if (input_check(cDOWN) and cy + ch > y)
{
	if (yspeed < 4) yspeed += acceleration;
}
if (not (input_check(cUP) or input_check(cDOWN)))
{
	yspeed -= min(abs(yspeed), deceleration) * sign(yspeed);
	if (abs(yspeed) < 1) yspeed = 0;
}

switch (alarm[0])
{
case -1:
	if (input_check(cLEFT))
	{
		facing = -1;
		if (xspeed > -4) xspeed -= acceleration;
	}
	if (input_check(cRIGHT))
	{
		facing = 1;
		if (xspeed < 4) xspeed += acceleration;
	}
	if (not (input_check(cLEFT) or input_check(cRIGHT)) and cx < x)
	{
		if (xspeed > -2) xspeed = max(xspeed - deceleration, -2);
	}
	image_angle = (image_angle > 4) ? angle_wrap(image_angle + 12) : 0;
	break;
case 0:
	break;
case 76:
	if (super_lose_rings)
	{
		var ring_count = objGameData.rings[0] - 10;
		var dir = 0;
		for (var total = min(ring_count, 10); total > 0; --total)
		{
			dir = angle_wrap(dir + (36 * ((total + 1) mod 2)));
			with (instance_create_depth(x - 16, y, 1, objRingDroppedFinalBoss))
			{
				speed = 4;
				direction = gravity_direction + 180 + (sign(1.5 - ((total mod 2) * 3)) * dir);
			}
		}
		objGameData.rings[0] = max(ring_count, 0);
		if (objGameData.rings[0] == 0)
		{
			player_transform(false);
		}
		super_lose_rings = false;
	}
	break;
default:
	if (cx < x)
	{
		xspeed += 0.05;
		image_angle += 12;
	}
	else
	{
		alarm[0] = 0;
	}
}

x = clamp(x + xspeed, 8, room_width - 8);
y = clamp(y + yspeed, 8, room_height - 8);

player_get_terrain_list();

if (not superform)
{
	player_is_falling();
	animation_new = "float";
}