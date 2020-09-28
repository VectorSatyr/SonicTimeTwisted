/// @description  Initialize input device
image_speed = 0;
var i;

// input flags
flag_player_input = true;
pressingGamepad = -1;

// computer controls
computer_input_setup();

// input id
device_id = instance_number(objInput)-1;

// input state
state = 0;
state_press = 0;
state_release = 0;

// axes
x_axis = 0;
y_axis = 0;
badAxis = 0;
pad = -1;
button_count = 0;
axis_count = 0;

// input stream
stream = -1;
stream_size = $FF;

input_load();
fix_bad_gamepad_axis();

gamepad_update_enabled = true;
load_gamepad_support()

