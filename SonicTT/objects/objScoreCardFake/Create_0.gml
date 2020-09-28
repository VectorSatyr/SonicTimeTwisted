action_inherited();
/// Initialize

// basics
state = 0;
total_bonus = 0;

// name tag
switch objGameData.character_id[0]
{
case 2: name_tag = "TAILS"; break;
case 3: name_tag = "KNUCKLES"; break;
default: name_tag = "SONIC";
}


// current act
act = objLevel.act;

// time bonus
time_bonus = 0;

// ring bonus
rings_bonus = 0;

// perfect bonus
perfect_bonus = -1;

// screen positions
draw_set_font(objResources.fontTitle);
title_ox1 = (objScreen.width * 0.5) - (string_width(string_hash_to_newline(name_tag)) * 0.5)
title_ox2 = (objScreen.width * 0.5) - 88;
act_ox = (objScreen.width * 0.5) + 88;
score_ox = (objScreen.width * 0.5) - 104; //92;
tally_ox = (objScreen.width * 0.5) + 96;

// offsets
title_offset1 = ceil((title_ox1 + string_width(string_hash_to_newline(name_tag))) * 0.0625) * 16;
title_offset2 = ceil((objScreen.width - title_ox2) * 0.0625) * 16;
score_offset1 = (ceil((objScreen.width - score_ox) * 0.0625) * 16) + 48;
score_offset2 = score_offset1 + 80;
score_offset3 = score_offset1 + 80;
score_offset4 = score_offset1 + 96;

// music
play_jingle(bgmClear, false);

// start event
alarm[0] = 60;

