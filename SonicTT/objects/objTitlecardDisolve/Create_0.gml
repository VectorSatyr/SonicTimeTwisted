/// @description  Initialize

// state
mode = 0;
screenshot = background_create_from_surface(application_surface, 0, 0, objScreen.width, objScreen.height, 0, 0);
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
remove = 0;

///d3d_end();
d3d_end();

