/// @description Initialize
event_inherited();
reaction_script = player_reaction_collapsing_platform;
through = true;
cell_width = 16;
cell_height = 16;
timed_delay_per_column = 2;
timed_delay_per_row = 5;
total_columns = abs(sprite_width div cell_width);
total_rows = abs(sprite_height div cell_height);
reverse = (sign(image_xscale) == -1);