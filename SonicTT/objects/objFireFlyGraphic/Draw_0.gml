/// @description  Draw Flash
draw_set_color(c_white);

if objFireFly.state < 12 {
    draw_sprite_ext(sprFireFlyWingLeft,0,x-10,y-20,1,1,leftRotation,c_white,.5);
    draw_sprite_ext(sprFireFlyWingRight,0,x+10,y-20,1,1,rightRotation,c_white,.5);
}

if alarm[2] mod 2
{
    draw_set_blend_mode_ext(10, 1);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
    draw_set_blend_mode(bm_normal);
}
draw_self();
if alarm[2] mod 2
{
    draw_set_blend_mode_ext(10, 1);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
    draw_set_blend_mode(bm_normal);
}


