if instance_exists(objLevel.player[0]) {

    if x < objLevel.player[0].x && path_index != DDPRockPath2 {
    
        path_start(DDPRockPath2,1,1,true);
        
    }

    if path_speed < 8 && path_speed != 0 && path_position < 0.75 {
    
        path_speed +=0.1;
    
    } else if path_position >= 0.75 {
    
        path_speed -=0.068;
    
    }
}



if path_speed > 0 {

     image_angle +=5;

}

