/// @description  Draw scorecard

draw_set_font(objResources.fontHud);
draw_text_color(__view_get( e__VW.XView, view_current )+score_ox + score_offset1, __view_get( e__VW.YView, view_current ) + 112, string_hash_to_newline("TIME BONUS"),c_white,c_white,c_yellow,c_yellow,1);
//draw_sprite(sprScore, 0, view_xview[view_current]+score_ox + score_offset1, view_yview[view_current] + 112);
draw_text_color(__view_get( e__VW.XView, view_current )+act_ox + title_offset2-32, __view_get( e__VW.YView, view_current ) + 74, string_hash_to_newline(act),c_white,c_white,c_yellow,c_yellow,1);
//draw_sprite(sprAct, act, view_xview[view_current]+act_ox + title_offset2, view_yview[view_current] + 62);
draw_text_color(__view_get( e__VW.XView, view_current )+score_ox + score_offset2, __view_get( e__VW.YView, view_current ) + 128, string_hash_to_newline("RING BONUS"),c_white,c_white,c_yellow,c_yellow,1);
//draw_sprite(sprScore, 1, view_xview[view_current]+score_ox + score_offset2, view_yview[view_current] + 128);
if perfect_bonus > -1 draw_text_color(__view_get( e__VW.XView, view_current )+score_ox + score_offset3, __view_get( e__VW.YView, view_current ) + 144, string_hash_to_newline("PERFECT BONUS"),c_white,c_white,c_yellow,c_yellow,1);
draw_text_color(__view_get( e__VW.XView, view_current )+score_ox + score_offset4, __view_get( e__VW.YView, view_current ) + 160, string_hash_to_newline("TOTAL"),c_white,c_white,c_yellow,c_yellow,1);
// text
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(objResources.fontHud);
if objGameData.character_id[0] == 1 {
    draw_text_color(__view_get( e__VW.XView, view_current )+title_ox1 - title_offset1, __view_get( e__VW.YView, view_current ) + 56, string_hash_to_newline(name_tag),c_white,c_white,c_blue,c_blue,1);
} else if objGameData.character_id[0] == 2 {
      draw_text_color(__view_get( e__VW.XView, view_current )+title_ox1 - title_offset1, __view_get( e__VW.YView, view_current ) + 56, string_hash_to_newline(name_tag),c_white,c_white,c_orange,c_orange,1);
} else {
    draw_text_color(__view_get( e__VW.XView, view_current )+title_ox1 - title_offset1, __view_get( e__VW.YView, view_current ) + 56, string_hash_to_newline(name_tag),c_white,c_white,c_red,c_red,1);
}
draw_text_color(__view_get( e__VW.XView, view_current )+title_ox2 + title_offset2, __view_get( e__VW.YView, view_current ) + 74, string_hash_to_newline("GOT THROUGH ACT"),c_white,c_white,c_yellow,c_yellow,1);
draw_set_halign(fa_right);
draw_set_font(objResources.fontHud);
draw_text(__view_get( e__VW.XView, view_current ) + tally_ox + score_offset1, __view_get( e__VW.YView, view_current ) + 113, string_hash_to_newline(time_bonus));
draw_text(__view_get( e__VW.XView, view_current ) + tally_ox + score_offset2, __view_get( e__VW.YView, view_current ) + 129, string_hash_to_newline(rings_bonus));
if perfect_bonus > -1 draw_text(__view_get( e__VW.XView, view_current ) + tally_ox + score_offset3, __view_get( e__VW.YView, view_current ) + 145, string_hash_to_newline(perfect_bonus));
draw_text(__view_get( e__VW.XView, view_current ) + tally_ox + score_offset4, __view_get( e__VW.YView, view_current ) + 161, string_hash_to_newline(total_bonus));

