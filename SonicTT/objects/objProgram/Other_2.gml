/// @description  Start the game

// randomize seed
randomize();

// create geometric tables
globalvar sine, cosine;
for (var i=0; i<360; i+=1) {sine[i] = sin(degtorad(i)); cosine[i] = cos(degtorad(i));}

// start critical processes
instance_create(0, 0, objScreen);
instance_create(0, 0, objResources);
instance_create(0, 0, objGameData);
instance_create(0, 0, objMusic);

// add levels to list
//PLEASE NOTE THE TRUE LEVEL ORDER IS AAZ, FFZ, VVZ, DDZ, TTZ, SSZ, RRZ, PPZ

level_add(AA1_f, AA1_p);
level_add(intro1,introPast1);
level_add(AA2_f, AA2_p);
level_add(RR1_f, RR1_p);
level_add(RR2_f, RR2_p);
level_add(FF1_f, FF1_p);
level_add(FF2_f, FF2_p);
level_add(VV1_f, VV1_p);
level_add(VV2_f, VV2_p);
level_add(DD1_f, DD1_p);
level_add(DD2_f, DD2_p);
level_add(TT1_f, TT1_p);
level_add(TT2_f, TT2_p);
level_add(SS1,SS1);
level_add(PP1,PP1);
level_add(PP2,PP2);
level_add(MM1,MM1);
level_add(ending,ending);

// add special stages
special_level_add(SSF1, SSP1);
special_level_add(SSF2, SSP2);
special_level_add(SSF3, SSP3);
special_level_add(SSF4, SSP4);
special_level_add(SSF5, SSP5);
special_level_add(SSF6, SSP6);
special_level_add(SSF7, SSP7);

/*

special_level_add(SSF1, SSP7);
special_level_add(SSF2, SSP1);
special_level_add(SSF3, SSP3);
special_level_add(SSF6, SSP4);
special_level_add(SSF5, SSP5);
special_level_add(SSF7, SSP2);
special_level_add(SSF4, SSP6);
*/

/* AUTHOR NOTE: May want to setup a title screen or menu here. For now, we'll
start the game immediately. */
//room_goto(ending);
room_goto(titlescreen);
// start gameplay
//level_goto_next();

audio_set_master_gain(0, 0.75);

/* */
/*  */
