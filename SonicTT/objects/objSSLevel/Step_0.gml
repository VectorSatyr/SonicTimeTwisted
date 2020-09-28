// Pause
/// Pausing
if started and not instance_exists(objTransition) and input_check_pressed(cSTART) {objProgram.paused = not objProgram.paused; game_pause(objProgram.paused);}

