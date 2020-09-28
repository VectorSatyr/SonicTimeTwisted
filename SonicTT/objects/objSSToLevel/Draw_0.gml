if screenshot > -1 
{
    //draw_enable_alphablend(false);
    draw_background_stretched_ext(screenshot, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), objScreen.width, objScreen.height, c_white, image_alpha);
    //draw_enable_alphablend(true);
}

