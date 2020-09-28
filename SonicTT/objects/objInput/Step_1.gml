/// @description  Get device state
var buffer, i, a;

// clear states
buffer = state;
state = 0;
state_press = 0;
state_release = 0;

/*
if objScreen.image_index mod 8 == 0
    gamepad_update();*/


// keys
for (i = 0; i < key_count; i++)
    if (keyboard_check(key[i])) state |= key_control[i];

if(gamepad_update_enabled) {    
    // buttons
    for (i = 0; i < button_count; i++)
        if (gamepad_button_check(pad, button[i])) state |= button_control[i];
        //if (gamepad_button_check(button_gamepad[i], button[i])) state |= button_control[i];
        // if (gamepad_button(pad, button[i])) state |= button_control[i];
    
    // axes
    for (i = 0; i < axis_count; i++)
        if (gamepad_axis_value(pad, axis[i]) * axis_direction[i] > axis_deadzone[i]) state |= axis_control[i];
        //if (gamepad_axis_value(axis_gamepad[i], axis[i]) * axis_direction[i] > axis_deadzone[i]) state |= axis_control[i];
        // if (gamepad_axis(pad, axis[i]) * axis_direction[i] > axis_deadzone[i]) state |= axis_control[i];
}
    
// axes
x_axis = 0;
if (state & cLEFT && flag_player_input) || (computer_cLEFT && !flag_player_input) x_axis -= 1;
if (state & cRIGHT && flag_player_input) || (computer_cRIGHT && !flag_player_input) x_axis += 1;

y_axis = 0;
if (state & cUP && flag_player_input) || (computer_cUP && !flag_player_input) y_axis -= 1;
if (state & cDOWN && flag_player_input) || (computer_cDOWN && !flag_player_input) y_axis += 1;

// pressing and releasing
state_press = (state & buffer) ^ state;
state_release = (state & buffer) ^ buffer;

/* */
/// Check for Pressing

if pressingGamepad != -1 {
    if !gamepad_button_check(pad,pressingGamepad) && !gamepad_axis_value(pad,pressingGamepad) {
        pressingGamepad = -1;
    }
}

/*
if pressingGamepad != -1 {
    if !gamepad_button(0,pressingGamepad) && alarm[0] == -1  {
        pressingGamepad = -1;
    }
}*/

/* */
/*  */
