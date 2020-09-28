action_inherited();
/// Initialize

// state
mode = 0;

// banners
fade_alpha = 0;
planet_ox = 600; //608;
planet_oy = -600; //-416;
banner_ox = objScreen.width + 240;
banner_speed = 16;

// title strings
title_word = 0;
for (var i=0; i<4; i+=1)
{
    title_string[i] = "";
    title_length[i] = 0;
    title_pos[i] = 0;
    title_ox[i] = 0;
    title_scale[i, 0] = 12;
}

    title_string[0] = "Frigid";
    title_string[1] = "Fortress";
    title_string[2] = "Zone";
    if objProgram.in_past
        title_string[3] = "ACT1 PAST";
    else title_string[3] = "ACT1 FUTURE";

///d3d_end();
d3d_end();

/// Setup title
var i, j;

// setup lengths and offsets
draw_set_halign(fa_left);
for (i=0; i<4; i+=1)
{
    // get length in characters
    title_length[i] = string_length(title_string[i]);
    if title_length[i]<1 continue;

    // set font
    switch i
    {
    case 2: draw_set_font(objResources.fontTitleSmall); break;
    case 3: draw_set_font(objResources.fontTitleYellow); break;
    default: draw_set_font(objResources.fontTitleLarge);
    }

    // set offset
    title_ox[i] = 298-string_width(string_hash_to_newline(title_string[i]));

    // go through each character
    for (j=0; j<title_length[i]; j+=1) title_scale[i, j] = 12;
}

