/// @description  Start boss

// start moving
move_platforms = true;

objMusic.bossLoop = bgmMetalSonicLoop;
play_boss_intro(bgmMetalSonicIntro,0);

// add boss
instance_create(0, 0, objVV1Boss);

