/// @description  Render shield

// base
if sprite_index==sprShieldBubble and (objScreen.image_index mod 2) draw_sprite_ext(sprite_index, (objScreen.image_index div 12) mod 2, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha); else

// surrounding wave
draw_self();

