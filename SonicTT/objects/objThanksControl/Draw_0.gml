/// @description  Render Names

// setup
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(objResources.fontHud);


draw_text_color(__view_get( e__VW.XView, 0 )+213,__view_get( e__VW.YView, 0 )+120,string_hash_to_newline("THANKS FOR PLAYING"),c_white,c_white,c_yellow,c_yellow,1);
draw_text_color(__view_get( e__VW.XView, 0 )+213,__view_get( e__VW.YView, 0 )+144,string_hash_to_newline("STAY TUNED FOR THE FULL GAME RELEASE"),c_white,c_white,c_yellow,c_yellow,1);

