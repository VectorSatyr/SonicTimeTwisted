switch state {

case 0: // Move On Screen

    if instance_exists(objLevel.player[0]) {
        x=objPPBossController.x;
        if image_xscale > .25 {
            image_xscale -=0.002;
            image_yscale -=0.002;
        }
    
        if y > __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )*0.5 {
        
            y-=2;
        
        } else {
            y=__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )*0.5;
            state=1;
        
        }
    }
    
break;

case 1: // Fire
    
    /*if firingCount > 5 {
    
        state = 3;
    
    }*/
    
    firingCount +=1;
    fireball = instance_create(x,y,objGalanikFireball);
    image_speed = .25;

    with objLevel.player[0] {
    
        if terrain_id == noone {
            other.fireball.platformId = instance_nearest(x,y,objBossPlatform);
        } else other.fireball.platformId = terrain_id;
    
    }
    
    y=__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )*0.5 ;
    state = 2;

break;

case 2: // Firing 

    if image_index == 4 {
    
        fireball.fire = true;
        
        
        
        image_speed = 0;
        image_index=0;
        if firingCount > 4 {
        
            state = 3;
            
        } //else state = 1;
    
    }
    y=__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )*0.5 ;
break;

case 3: // Move Off Screen

    if instance_exists(objLevel.player[0]) {
        if image_xscale < 1 {
            image_xscale +=0.002;
            image_yscale +=0.002;
        }
    
        if y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )+6 {
        
            y+=2;
        
        } else {
        
            //state=4;
            instance_destroy();
            
            with objGalanik {
            
                state = 5;
                audio_play_sound(sndQuake,10,0);
                //alarm[0] = 100;
            
            }
        
        }
    }

break;

case 4: // Rest Reset

    image_xscale = 1;
    image_yscale = 1;

break;

}

/* */
/*  */
