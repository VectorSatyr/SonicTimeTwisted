if instance_exists(objLevel.player[0])
    if objLevel.player[0].x > 9432 && objLevel.player[0].x < 12448 {
        with objParallax instance_destroy();
        objLevel.bg = instance_create(x,y,objDDFutureIndoorBack);
        instance_destroy();
        
    }

