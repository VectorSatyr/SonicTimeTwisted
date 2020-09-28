/// @description  Toggle fullscreen
///Change Window Size
switch window_state {

    case 1:
        window_scale = 2;
        window_state = 2;
    break;
    
    case 2:
        window_scale = 3;
        window_state = 3;
    break;
    
    case 3:
        window_scale = 3;
        window_state = 4;
        window_set_fullscreen(true);
    break;
    
    case 4:
        window_scale = 1;
        window_state = 1;
        window_set_fullscreen(false);
    break;
}

window_set_size(width * window_scale, height * window_scale);

// The window must wait a step to center...
alarm[0]=1;



