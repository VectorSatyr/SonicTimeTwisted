/// @description  Pause Menu

if objProgram.paused {
    switch pauseState {
    case 0:
    if allowInput == true {
        if input_check_pressed(cUP) {
            if pauseOffset > 0 {
                pauseOffset -=16;
            }
        }
        
        if input_check_pressed(cDOWN) {
            if pauseOffset < 48 {
                pauseOffset +=16;
            }
        }
        
        if input_check_pressed(cACTION) {
            switch pauseOffset {
                case 0: //Unpause
                    objProgram.paused = false;
                    game_pause(objProgram.paused);
                break;
                case 16: // Controls
                    pauseState = 1;
                break;
                case 32: // Window Size
                    pauseState = 2;
                break;
                case 48: // exit
                    pauseState = 3;
                break;
            
            }
        }
    }
    break;
    
    case 1: // Map Controls
           if allowInput == true {
            if controlState == 0 {
                    if keyboard_check_pressed(vk_anykey) {
                       save_control_map_keyboard("up",keyboard_lastkey);
                       controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton { 
                            save_control_map_gamepad("up",padButton);
                            controlState+=1;
                        }
                        
                        if axis == "" {
                            axis = input_any_gamepad_axis();
                        }
                        if axis != "" {
                            if input_any_gamepad_axis() == "" {
                                save_control_map_gamepad("up",axis);
                                axis = "";
                                controlState+=1;
                            }
                        }
                    }
            } else if controlState == 1 {
                    if keyboard_check_pressed(vk_anykey) {
                       save_control_map_keyboard("down",keyboard_lastkey);
                        controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton { 
                            save_control_map_gamepad("down",padButton);
                            controlState+=1;
                        }
                        
                        if axis == "" {
                            axis = input_any_gamepad_axis();
                        }
                        if axis != "" {
                            if input_any_gamepad_axis() == "" {
                                save_control_map_gamepad("down",axis);
                                axis = "";
                                controlState+=1;
                            }
                        }
                    }
            } else if controlState == 2 {
                    if keyboard_check_pressed(vk_anykey){
                       save_control_map_keyboard("left",keyboard_lastkey);
                       controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton { 
                            save_control_map_gamepad("left",padButton);
                            controlState+=1;
                        }
                        
                        if axis == "" {
                            axis = input_any_gamepad_axis();
                        }
                        if axis != "" {
                            if input_any_gamepad_axis() == "" {
                                save_control_map_gamepad("left",axis);
                                axis = "";
                                controlState+=1;
                            }
                        }
                    }
            } else if controlState == 3 {
                    if keyboard_check_pressed(vk_anykey) {
                      save_control_map_keyboard("right",keyboard_lastkey);
                      controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton { 
                            save_control_map_gamepad("right",padButton);
                            controlState+=1;
                        }
                        
                        if axis == "" {
                            axis = input_any_gamepad_axis();
                        }
                        if axis != "" {
                            if input_any_gamepad_axis() == "" {
                                save_control_map_gamepad("right",axis);
                                axis = "";
                                controlState+=1;
                            }
                        }
                    }
            } else if controlState == 4 {
                    if keyboard_check_pressed(vk_anykey) {
                        save_control_map_keyboard("a",keyboard_lastkey);
                        controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton != -1 { 
                            save_control_map_gamepad("a",padButton);
                            controlState+=1;
                        }
                    }
            } else if controlState == 5 {
                    if keyboard_check_pressed(vk_anykey) {
                        save_control_map_keyboard("b",keyboard_lastkey);
                        controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton != -1 { 
                            save_control_map_gamepad("b",padButton);
                            controlState+=1;
                        }
                    }
            } else if controlState == 6 {
                    if keyboard_check_pressed(vk_anykey) {
                        save_control_map_keyboard("c",keyboard_lastkey);
                        controlState+=1;
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton != -1 { 
                            save_control_map_gamepad("c",padButton);
                            controlState+=1;
                        }
                    }
            } else if controlState == 7 {
                    if keyboard_check_pressed(vk_anykey) {
                        save_control_map_keyboard("start",keyboard_lastkey);
                        controlState=0;
                        pauseState = 0;
                        with objInput input_load();
                    } else { 
                        var padButton = input_any_gamepad_button()
                        if padButton != -1 { 
                            save_control_map_gamepad("start",padButton);
                            controlState=0;
                            pauseState = 0;
                            allowInput = false;
                            with objInput input_load();
                        }
                    }
            }
        }
        
    break;
    
    case 2: // Set Window Size
    if input_check_released(cLEFT) {
        with objScreen {
            if window_state > 1 {
                window_state -= 1;
                if window_state != 3 {
                    window_scale -=1;
                }
                window_set_fullscreen(false);
                window_set_size(width * window_scale, height * window_scale);
                alarm[0]=1;
            }
        }
    }
    if input_check_released(cRIGHT) {
        with objScreen {
            if window_state < 4 {
                window_state += 1;
                window_scale = window_state
                if window_state == 4 {
                    window_scale = 3;
                }
                window_set_size(width * window_scale, height * window_scale);
                alarm[0]=1;
                if window_state == 4 {
                    window_set_fullscreen(true);        
                }
            }
        }
    } 
    if input_check_pressed(cACTION) {
        pauseState = 0;
    }
    break;
    
    case 3:
    if input_check_pressed(cLEFT) {
       shouldExit = false;
    }
    if input_check_pressed(cRIGHT) {
        shouldExit = true;
    } 
    if input_check_pressed(cACTION) {
        if shouldExit
         game_restart();
         else pauseState = 0;
    }
    break;
    }
}

        
        if objInput.pressingGamepad == -1 {
            allowInput = true;
        }
    

/// flash for key mapper
if inputFlash < 1
    inputFlash += .25;
    else inputFlash = 0;

/// fade white for pause

if objProgram.paused {
    if white < 0.5
        white+=.125;
    else white = 0.5;
} else if white > 0 {
    white-=.125;
}

