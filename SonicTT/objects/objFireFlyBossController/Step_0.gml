switch state {

case 0:

    with objLevel.player[0] {
    
        if x > other.x-16 {
            other.state=1;
            stop_all_music(false);
        }
    
    }

break;

case 1:

    with objFireFly state=1;
    objMusic.bossLoop = bgmBossLoop;
    play_boss_intro(bgmBossIntro,0);
    state=2;

break;

}

