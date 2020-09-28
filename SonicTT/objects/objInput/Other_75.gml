/// @description  Detect gamepads
switch (async_load[?"event_type"]) {
case "gamepad discovered":
    var index = async_load[?"pad_index"];
    if (pad == -1) {
        pad = index;
    }
    break;

case "gamepad lost":
    var index = async_load[?"pad_index"];
    if (pad == index) {
        pad = -1;
    }
    break;
}

