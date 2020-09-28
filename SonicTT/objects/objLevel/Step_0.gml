/// @description  Pausing
if started and not instance_exists(objTransition) and input_check_pressed(cSTART) {

    if not objProgram.paused {
        objProgram.paused = true;
        game_pause(objProgram.paused);
    } else {
        objProgram.paused = false;
        game_pause(objProgram.paused);
        with objHud {
        pauseState = 0;
        }
    }

}

