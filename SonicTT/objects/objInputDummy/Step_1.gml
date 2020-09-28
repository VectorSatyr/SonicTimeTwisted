/// @description  Get device state
var buffer, i;

// clear states
buffer = state;
state = 0;
state_press = 0;
state_release = 0;

// get input
i = instance_find(objInput, 0);
state = ds_list_find_value(i.stream, ds_list_size(i.stream)-40);

// negate opposite inputs
if state&cUP and state&cDOWN state ^= (cUP|cDOWN);
if state&cLEFT and state&cRIGHT state ^= (cLEFT|cRIGHT);

// pressing and releasing
state_press = (state&buffer)^state;
state_release = (state&buffer)^buffer;

