/// @description  Draw flash
draw_set_color(c_white);

if parentId.alarm[0] < 45 {
    if parentId.alarm[0] mod 2
    {
        draw_set_blend_mode_ext(10, 1);
        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
        draw_set_blend_mode(bm_normal);
    }
    draw_self();
    if parentId.alarm[0] mod 2
    {
        draw_set_blend_mode_ext(10, 1);
        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
        draw_set_blend_mode(bm_normal);
    }
} else draw_self();

