

switch state {

case 0:

    if objLevel.player[0].camera.bottom < __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) {
    
        __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (2) );
    
    } else {
    
        state = 1;
        objMusic.bossLoop = bgmBossLoop;
        play_boss_intro(bgmBossIntro,0);
    }

break;

case 1:

    
break;

case 2:

    with playerId {
        player_is_falling();
    }
    
    state = 3;
    
break;

case 3:

break;
}



