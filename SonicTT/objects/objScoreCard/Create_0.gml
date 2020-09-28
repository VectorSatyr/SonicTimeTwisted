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
var total_time = objLevel.timer div 60;
if total_time > 480 time_bonus = 50000; else
if total_time > 465 time_bonus = 10000; else
if total_time > 450 time_bonus = 5000; else
if total_time > 420 time_bonus = 4000; else
if total_time > 390 time_bonus = 3000; else
if total_time > 330 time_bonus = 2000; else
if total_time > 270 time_bonus = 1000; else
if total_time > 210 time_bonus = 500; else
if total_time == 1 time_bonus = 100000; else
time_bonus = 0;

// ring bonus
rings_bonus = objGameData.rings[0]*10;

// perfect bonus
if (objLevel.total_rings == 0) perfect_bonus = 50000; else
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

