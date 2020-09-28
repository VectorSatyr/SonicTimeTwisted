switch state {

case 1:
    
    blast = true;
    
    if blasty < y+32 {
        
        blasty +=2;
        
        } else state = 2;

break;

case 2:
    
    if y > ystart -112 {
    
        y-=1;
        image_index=1;
    
    } else state = 3;

break;

case 3:

    with objSSRobotnik visible=true;
    y += cos(objScreen.image_index/16)*.25;
    image_index=2;
    
    with objSSController {
         if state == 1 { 
            alarm[0]= 110;
            state = 2;
            shake=true;
            audio_play_sound(sndMetalSpeak,1,false);
         }
    }
    
break;

}

// visibility firebolt and messagebox
if image_alpha == .5 {

    image_alpha = 0;
    messageVisibility=1;
    
    }
    else { image_alpha = .5; messageVisibility=0; }

blastImageIndex +=.5;
    
    if blastImageIndex > 1 {
                
        blastImageIndex = 0;
                
    }
    
if !audio_is_playing(sndSSWave) && state > 0 audio_play_sound(sndSSWave, 0,0); 

