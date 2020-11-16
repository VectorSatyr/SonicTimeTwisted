/// @description Initialize
ax = bbox_left;
ay = bbox_top;
bx = bbox_right;
by = bbox_bottom;

left = min(ax, bx);
top = min(ay, by);
right = max(ax, bx);
bottom = max(ay, by);

width = bx - ax;
height = by - ay;

length = (width * width) + (height * height);
angle = arctan2(height, width);