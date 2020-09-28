/// @description  Initialize
image_speed = 0;
level = "";
/* AUTHOR NOTE: This object controls all global game operations, such as the
level order. */

// state
game_mode = 1;
paused = false;
lost_focus = false;
check_room = 0;

// controllers
instance_create(0, 0, objInput);

// level data
current_level = -1;
cutscene = 0;
future_list = ds_list_create();
past_list = ds_list_create();
special_future_list = ds_list_create();
special_past_list = ds_list_create();
spawn_tag = 0;
spawn_time = 36000;
temp_spawn_tag = -1;
temp_spawn_time = -1;
time_traveling = 0;
in_past = false;
temp_shield = -1;
temp_xspeed = 0;
temp_yspeed = 0;
temp_state = player_state_standby;
temp_animation="idle";
temp_spinning=false;
temp_sprite=sprSonicIdle;
temp_timeline_position=0;
temp_image_index=0;
temp_y=0;
temp_x=0;
temp_yview_offset=0;
temp_xview_offset=0;
stop_sound = true;

//game_directory="%localappdata%\Sonic_Time_Twisted\"
game_directory="\\Sonic_Time_Twisted\\";

// music
jingle = -1;
music = -1;
music_queue = ds_priority_create();

// set up rings and lives watchers
life_past_list = noone;
ring_past_list = noone;
life_future_list = noone;
ring_future_list = noone;

saveSlot=0;

special_past_current_level=0;
special_future_current_level=0;
temp_superform = false;


/* */
/*  */
