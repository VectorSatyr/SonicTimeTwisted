/// @description  Initialize HUD
image_speed = 0;

// character id(s)
character_id[0] = max(objGameData.character_id[0]-1, 0);
character_id[1] = max(objGameData.character_id[1]-1, 0);

// time stamp
time_stamp = "";
pauseOffset = 0;
pauseState = 0;
controlState = 0;
shouldExit = false;
axis = -1;
inputFlash = 0;
white = 0;
timeOffset = 0;

