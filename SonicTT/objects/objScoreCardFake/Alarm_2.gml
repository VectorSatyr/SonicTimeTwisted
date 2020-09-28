state = 3;
//alarm[3] = 300;
alarm[3] = 280;
objMetallixController.state = 2;
audio_play_sound(sndBombExplosion,10,false);
with objFlower instance_change(objSmokePuff, false);
with objCapsule instance_change(objExplosionGroup, false);

if objProgram.in_past {
    with objLevel.player[0] {
        camera.left=16192;
        camera.bottom=1216;
        camera.top=640;
        camera.right=16896;
    }
} else
    with objLevel.player[0] {
        camera.left=2176;
        camera.bottom=448;
        camera.top=0;
        camera.right=2944;
    }




