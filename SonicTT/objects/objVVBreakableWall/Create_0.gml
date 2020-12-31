/// @description Initialize
event_inherited();
image_index = (objProgram.in_past) ? 1 : 0;
image_speed = 0;
reaction_script = player_reaction_breakable_nobounce;
facing = 1;
debris_columns = 4;
debris_rows = 4;
debris_width = sprite_width div debris_columns;
debris_height = sprite_height div debris_rows;