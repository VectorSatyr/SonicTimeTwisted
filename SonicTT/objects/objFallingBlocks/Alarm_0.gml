var number=sprite_width/32;
    
    for(i=0; i < number; i++){
    
        instance_create(x+(i*32),y,objSingleFallBlock);
        
    
    }
    audio_play_sound(sndBreak,2,0);
    instance_destroy();

