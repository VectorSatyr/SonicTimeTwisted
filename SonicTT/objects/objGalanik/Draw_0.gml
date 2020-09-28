/// @description  draw self
/*
if flash {
draw_set_color(c_white);
    if alarm[11] mod 2
    {
        draw_set_blend_mode_ext(10, 1);
        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
        draw_set_blend_mode(bm_normal);
        
    }
    draw_self();
    if alarm[11] mod 2
    {
        draw_set_blend_mode_ext(10, 1);
        draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
        draw_set_blend_mode(bm_normal);
    
    }
} else {*/

    draw_self();
    
    if eyeTell == true && state < 6 {
        draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x-24,y-20,1,1,0,c_white,.65);
        draw_sprite_ext(sprGalanikEyeTell,floor(flame_index),x+24,y-20,1,1,0,c_white,.65);
    }

    if eye_index != -1
        draw_sprite_ext(sprGalanikDizzyEyes,floor(eye_index),x,y, image_xscale,image_yscale,0,c_white,1);



/* */
/*  */
