/// @description  Start Menu
    switch pauseState {
    case 0:
    if allowInput == true {
            if input_check_pressed(cUP) {
                if pauseOffset > 0 {
                    pauseOffset -=16;
                }
            }
            
            if input_check_pressed(cDOWN) {
                if pauseOffset < 64 {
                    pauseOffset +=16;
                }
            }
            
            if input_check_pressed(cACTION) || input_check_pressed(cSTART) {
                switch pauseOffset {
                    case 0: // to save select
                        transition_to(objFadeWhite, saveSelect, 10)
                        allowInput = false;
                    break;
                    case 16: // Controls
                        pauseState = 1;
                        allowInput = false;
                        objInput.pressingGamepad = input_any_gamepad_button();
                        objInput.alarm[0] = 20;
                    break;
                    case 32: // Window Size
                        pauseState = 2;
                        allowInput = false;
                    break;
                    case 48: // Enable Gamepad
                        pauseState = 4;
                        allowInput = false;
                    break;
                    case 64: // Exit
                        pauseState = 5;
                        allowInput = false;
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
    if input_check_pressed(cACTION) || input_check_pressed(cSTART) {
        pauseState = 0;
    }
    break;
    
    case 3:
        if start == true
            if input_check_pressed(cSTART) {
                pauseState=0;
                with objTitlescreenPlane { hsp = 0; image_speed = 0 }
                with objTitleSonic image_speed = 0;
                
            
            }
    break;
    
    case 4: //Enable Gamepad Support
        if input_check_pressed(cLEFT) {
            gamepadSupport = false;
        } else if input_check_pressed(cRIGHT) {
            gamepadSupport = true;
        } else if input_check_pressed(cACTION) {
            pauseState = 0;
            objInput.gamepad_update_enabled = gamepadSupport;
            save_gamepad_input_enabled(gamepadSupport)
        }
    
    break;
    
    case 5:
        game_end();
    break;
    }
    
// fade in white for menu backer    
if pauseState != 3 {
    if screenAlpha < .75 {
        screenAlpha+=.025;
    }
}

if objInput.pressingGamepad == -1 {
    allowInput = true;
}
    


/// Level Select Code

switch(levelSelect) {
case 0:
    if input_check_pressed(cLEFT) {
        levelSelect +=1;
    }
break;
case 1:
    if input_check_pressed(cLEFT) {
        levelSelect +=1;
    } else if input_check_pressed(cRIGHT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) {
        levelSelect = 0;
    }
break;
case 2:
    if input_check_pressed(cRIGHT) {
        levelSelect +=1;
    } else if input_check_pressed(cLEFT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) {
        levelSelect = 0;
    }
break;
case 3:
    if input_check_pressed(cRIGHT) {
        levelSelect +=1;
    } else if input_check_pressed(cLEFT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) {
        levelSelect = 0;
    }
break;
case 4:
    if input_check_pressed(cUP) {
        levelSelect +=1;
    } else if input_check_pressed(cRIGHT) || input_check_pressed(cLEFT) || input_check_pressed(cDOWN) {
        levelSelect = 0;
    }
break;
case 5:
    if input_check_pressed(cDOWN) && pauseState == 3 {
        levelSelect +=1;
        audio_play_sound(sndRing,0,false);
    } else if input_check_pressed(cRIGHT) || input_check_pressed(cUP) || input_check_pressed(cLEFT) {
        levelSelect = 0;
    }
break;
case 6:
    if input_check(cA) && input_check(cSTART) {
        transition_to(objFadeWhite, charselect, 10)
    } else if input_check_pressed(cRIGHT) || input_check_pressed(cUP) || input_check_pressed(cDOWN) || input_check_pressed(cB) || input_check_pressed(cC){
        levelSelect = 0;
    }
break;
}

/// flash for key mapper and alpha control
if inputFlash < 1
    inputFlash += .25;
    else inputFlash = 0;
    
if name < 3 {
    logoAlpha -=.025;
}

