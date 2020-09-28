
if instance_exists(objSSMessages) && instance_exists(objSSPlayer)
    if objSSMessages.closing == 2 {
        //stop_all_music(false);
        level_goback();
    } else {
        objSSPlayer.kill = 4;
        visible = false;
       // objSSMessages.alarm[1] = 120;
    }

