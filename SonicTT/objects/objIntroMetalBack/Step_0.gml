switch state {
    
    case 0:
        if __view_get( e__VW.XView, view_current ) < 112
            __view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) + (1) );
            
            else {
                    state = .5;
                    alarm[1] = 100;
                }
    
    
    break;
    
    case 1:
        if image_speed == 0 {
        
            audio_play_sound(sndMetalBolt,0,false);
        
        }
        image_speed = 1;
        image_alpha -=.05;
        
        if image_alpha <= 0 {
            image_index = 0;
            state = 2;
            image_speed = .25;
            sprite_index = sprMetalStreak;
            image_alpha =1;
            }
    break;
    
    case 2:
    if image_index == 29 {
        alarm[2]=60;
        state = 2.5;
        image_speed = 0;
        }
    break;
    }

