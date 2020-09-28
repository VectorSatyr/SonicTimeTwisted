/// @description  Render Fireball

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,.45);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprFinalBossExhaustAdd,image_index,x,y,image_xscale*1.2,image_yscale*1.2,0,c_white,0.25);
draw_set_blend_mode(bm_normal);

