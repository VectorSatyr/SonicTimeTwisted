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

if objFinalBoss.eyeTell == true {
    draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x-10,y+20,1,1,0,c_white,.65);
    draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x+10,y+20,1,1,0,c_white,.65);
}




