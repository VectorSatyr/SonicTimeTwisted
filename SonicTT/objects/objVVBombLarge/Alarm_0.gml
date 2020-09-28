with instance_create(x,y,objExplosionCluster) {
 reaction_script=player_reaction_harmful;
 audio_play_sound(sndBombExplosion,1,false);
 }
instance_destroy();

