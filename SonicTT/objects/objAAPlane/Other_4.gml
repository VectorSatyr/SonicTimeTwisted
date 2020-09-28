if objProgram.spawn_tag != 0 { instance_destroy(); exit; }
// fade out only
with objTitlecard mode = 3;
with objInput flag_player_input = false;
//play_music_intro(objMusic.musicIntro,0);
//with objLevel started = true;

action_path(AAZPathPlane, 3, 0, 1);
