/// @description  Draw scorecard
d3d_set_projection_ortho(0, 0, __view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ), 0);

draw_set_font(objResources.fontHud);
draw_text_color(score_ox + score_offset1, 112, string_hash_to_newline("TIME BONUS"),c_white,c_white,c_yellow,c_yellow,1);
draw_text_color(score_ox + score_offset2, 128, string_hash_to_newline("RING BONUS"),c_white,c_white,c_yellow,c_yellow,1);
draw_text_color(score_ox + score_offset4, 160, string_hash_to_newline("TOTAL"),c_white,c_white,c_yellow,c_yellow,1);

// text
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(objResources.fontHud);

draw_set_halign(fa_right);
draw_set_font(objResources.fontHud);
draw_text(tally_ox + score_offset1, 113, string_hash_to_newline(time_bonus));
draw_text(tally_ox + score_offset2, 129, string_hash_to_newline(rings_bonus));
if perfect_bonus > -1 draw_text(tally_ox + score_offset3, 145, string_hash_to_newline(perfect_bonus));
draw_text(tally_ox + score_offset4, 161, string_hash_to_newline(total_bonus));



