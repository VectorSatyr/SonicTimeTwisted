/// @description  Render Background Elements

draw_sprite(sprTitleFog,0,304,1960);

// set the drawing target to the surface
if not surface_exists(tt_surface) tt_surface = surface_create(426, 240);
surface_set_target(tt_surface);
// clear the surface
draw_clear_alpha(0, 0);
// draw the sprite mirrored on the y axis to create the zipper shape
//draw_sprite_ext(spr, floor(image_index), xoffset, 0, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr, floor(image_index), 0, 1, 1, 1, 0, c_white, 1);
// reset the drawing target to the screen
surface_reset_target();

// increase the shift amount; this will cycle the colours
shift += 0.01;

if image_xscale < 1 {
    image_xscale+=0.0208;
    image_yscale+=0.0208;
   truex-=2.5;
   // truey-=5;
}

y=truey;
x=truex;



