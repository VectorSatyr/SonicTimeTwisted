/// @description  Draw "GAME OVER"
draw_sprite(sprGameOver, 0, __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )/2)-40-max(alarm[0]*16, 0), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )/2)
draw_sprite(sprGameOver, 1, __view_get( e__VW.XView, view_current )+(__view_get( e__VW.WView, view_current )/2)+40+max(alarm[0]*16, 0), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )/2)

// fill screen with black
draw_set_color(c_black);
draw_set_alpha(image_alpha);
draw_rectangle(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current ), false);
draw_set_color(c_white);
draw_set_alpha(1);

