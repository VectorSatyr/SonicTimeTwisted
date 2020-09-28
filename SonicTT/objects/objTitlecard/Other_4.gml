/// @description  Setup title
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

