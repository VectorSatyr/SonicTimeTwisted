/// @description player_floor_transfer()
var result = false;

var hit_transfer = collision_ray(
	offset_y * 2, offset_x, mask_rotation, terrain_id
);
if (hit_transfer != noone)
{
	var offset = angle_difference(angle, mask_rotation);
	var transfer_rotation = angle_wrap(mask_rotation + 90 * sign(offset));
	var transfer_angle = player_get_terrain_angle(
		hit_transfer, transfer_rotation
	);
	var transfer_offset = angle_difference(transfer_angle, mask_rotation);

	if (
		angle != transfer_angle and offset != transfer_offset and
		sign(offset) == sign(transfer_offset) and abs(offset) >= 45 and
		abs(transfer_offset) >= 45 and abs(transfer_offset) < 90
	)
	{
		mask_rotation = transfer_rotation;
		angle = transfer_angle;
		relative_angle = angle_wrap(angle - gravity_angle());

		var dsine = sine[mask_rotation];
		var dcosine = cosine[mask_rotation];

		// push out while inside
		while (
			collision_box(
				offset_x, offset_y, (mask_rotation mod 180) != 0, terrain_id
			)
		)
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
		
		result = true;
	}
}

return result;