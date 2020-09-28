switch active {

    case true:
    
        image_speed=.5;
        var player = instance_nearest(x,y,objPlayer);
        moleImageIndex = 0;
        
        if instance_exists(player) {
            with player {
                // movement and collision
                if x < other.x && x+96 > other.x
                xspeed -= 1;
            }
        }
        
        if !audio_is_playing(sndSSFan) && objLevel.started {
            audio_play_sound(sndSSFan,4,0);
        }
        
    break;
    
    case false:
        moleImageIndex = 1;
        if image_index == 0 {
        
            image_speed = 0;
        
        }
        
    break;

}

