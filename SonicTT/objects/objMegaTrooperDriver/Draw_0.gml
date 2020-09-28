/// @description  Draw Mole
draw_set_color(c_white);
if alarm[0] mod 2
{
    draw_set_blend_mode_ext(10, 1);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
    draw_set_blend_mode(bm_normal);
}
draw_self();
if alarm[0] mod 2
{
    draw_set_blend_mode_ext(10, 1);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
    draw_set_blend_mode(bm_normal);
}

