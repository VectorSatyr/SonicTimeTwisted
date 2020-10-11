/// player_get_terrain_angle(local_id, orientation)
var local_id = argument0;
var orientation = argument1;

if (not instance_exists(local_id)) return orientation;

if (local_id.angled == 0) return orientation;

var xscale = sign(local_id.image_xscale);
var yscale = sign(local_id.image_yscale);

if ((orientation == 0 and yscale == -1) or 
	(orientation == 90 and xscale == -1) or 
	(orientation == 180 and yscale == 1) or 
	(orientation == 270 and xscale == 1)) return orientation;

var curve = sign(local_id.curved);
var slanted = (curve == 0);

var horizontal = (orientation mod 180 != 0);

// out of bounds
if (horizontal)
{
	if (yscale == -1 and y - offset_x < local_id.bbox_top - (2 * slanted)) return orientation;
	if (yscale == 1 and y + offset_x > local_id.bbox_bottom + (2 * slanted)) return orientation;
	if (curve == -1)
	{
		if (xscale == 1 and x + offset_y < local_id.bbox_left) return orientation;
		if (xscale == -1 and x - offset_y > local_id.bbox_right) return orientation;
	}
}
else
{
	if (xscale == -1 and x - offset_x < local_id.bbox_left - (2 * slanted)) return orientation;
	if (xscale == 1 and x + offset_x > local_id.bbox_right + (2 * slanted)) return orientation;
	if (curve == -1)
	{
		if (yscale == 1 and y + offset_y < local_id.bbox_top) return orientation;
		if (yscale == -1 and y - offset_y > local_id.bbox_bottom) return orientation;
	}
}

var x1, y1, x2, y2;

if (local_id.angled > 0)
{
	return angle_wrap(local_id.angled); // pre-defined
}
else if (slanted)
{
	// triangular slant
	x1 = (yscale == 1) ? local_id.bbox_left : local_id.bbox_right;
	y1 = (xscale == 1) ? local_id.bbox_bottom : local_id.bbox_top;
	x2 = (yscale == 1) ? local_id.bbox_right : local_id.bbox_left;
	y2 = (xscale == 1) ? local_id.bbox_top : local_id.bbox_bottom;
	return angle_wrap(round(point_direction(x1, y1, x2, y2)));
}
else
{
	//  concave / convex curve
	x1 = (curve xor xscale) ? local_id.bbox_left : local_id.bbox_right;
	y1 = (curve xor yscale) ? local_id.bbox_top : local_id.bbox_bottom;
	x2 = x + ((horizontal) ? 0 : (offset_x * xscale));
	y2 = y + ((horizontal) ? (offset_x * yscale) : 0);
	return angle_wrap(round(
		(curve == 1) ? point_direction(x2, y2, x1, y1) :
		point_direction(x1, y1, x2, y2)) + 90);
}

// something went wrong
return orientation;