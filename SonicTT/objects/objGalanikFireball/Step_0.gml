if fire {

    if instance_exists(platformId) {
        
        move_towards_point(platformId.x+platformId.sprite_width*0.5,platformId.y, 2);
    
    }
    
    if image_index >= 4 {
        
        image_xscale+=0.0125;
        image_yscale+=0.0125;
        
        if image_index == 4 {
            
            image_speed = 0;
                
        }
        
        if image_xscale >= 1.5 && (instance_position( x, y, platformId) || !instance_exists(platformId)){
        
            if image_index == 7 {
            
                image_speed = 0;
                image_index = 7;
                image_alpha -=.125;
                if image_alpha <= 0 instance_destroy();
                
            } else if image_index == 4 {
            
                image_speed = 0.25;
            
            }
        
            with platformId {
            
            // Generate pieces
                var i;
                
                // sound
                audio_play_sound_at(sndCollapse, x+sprite_width*0.5, y+sprite_height*0.5, 0, 100, 300, 1, false, 0);
                
                // get bounds
                var width = sprite_width div 16;
                var height = sprite_height div 16;
                
                // go through rows
                for (var j=0; j<height; j+=1)
                {
                    // go through collumns
                    for (i=0; i<width; i+=1)
                    {
                        // create block
                        with instance_create(x+i*16, y+j*16, objBreakableRockBits)
                        {
                            // setup sprite
                            sprite_index = sprGalanikPlatformBroken;
                            image_index = j*width+i;
                
                            // set delay on drop
                            if image_xscale>0 alarm[0] = ((width-i)*2)+(((height-j)-1)*5); else
                            if image_xscale<0 alarm[0] = (i*2)+(((height-j)-1)*5);
                        }
                    }
                }
                instance_destroy();
            }
            remove = 2;
            with objGalanikSmall {
                
                    if firingCount <= 5
                        alarm[0] = 65;
                    
                }
        
        }
        
    }

}

/// animation index

if lightingIndex > 3.9 {
    lightingIndex = 0;
}
lightingIndex+=.25;

