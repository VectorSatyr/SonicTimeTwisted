/// player_get_terrain(local_id)
var local_id = argument0;

terrain_id = local_id;
angle = player_get_terrain_angle(local_id, mask_rotation);
relative_angle = angle_wrap(angle - gravity_angle());

var dsine = sine[mask_rotation];
var dcosine = cosine[mask_rotation];

// push out while inside
while (collision_box(offset_x, offset_y, (mask_rotation mod 180) != 0, terrain_id))
{
    x -= dsine;
    y -= dcosine;
}

// move down while outside
var n = 0;
while (not collision_ray(offset_x, n, mask_rotation, terrain_id))
{
	if (n > offset_y)
	{
	    x += dsine;
	    y += dcosine;
	}
	else
	{
		++n;
	}
}