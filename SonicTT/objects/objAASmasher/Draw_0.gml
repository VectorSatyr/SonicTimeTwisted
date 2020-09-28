/// @description  Draw smasher

// get sprite height
var w = sprite_get_width(sprAASmasher);
var h = sprite_get_height(sprAASmasher);

// render smasher scaled to height
for (var py=y; py<y+height; py+=h) draw_sprite_part(sprAASmasher, 0, 0, 0, w, min(y+height-py, h), xstart, py);

