// initialize level settings
objProgram.in_past=false;
objLevel.act = 1;
objLevel.flower = sprFlowerAA;



//objProgram.spawn_tag = 1;
with objLevel bg = instance_create(x,y,objAAFutureBack);

// setup titlecard
with objTitlecard
{
    title_string[0] = "Attraction";
    title_string[1] = "Attack";
    title_string[2] = "Zone";
    title_string[3] = "ACT1 FUTURE";
}

/*with objProgram{    
     if spawn_tag == 0 {
        cutscene = true;
     }
}*/