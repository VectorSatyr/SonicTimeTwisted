/// @description Initialize
event_inherited();
reaction_script = player_reaction_collapsing_platform;
through = true;
total_columns = sprite_width div 16;
total_rows = sprite_height div 16;
timed_delay_per_collumn = 2;
timed_delay_per_row = 5;
cell_width = sprite_width div total_columns;
cell_height = sprite_height div total_rows;