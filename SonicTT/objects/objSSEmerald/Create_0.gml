action_inherited();
groundz=12;
z=300;
image_speed = 0;

if objProgram.in_past == false {
    image_index = objProgram.special_future_current_level;
} else {
    image_index = objProgram.special_past_current_level;
    sprite_index = sprSSStone;
}

