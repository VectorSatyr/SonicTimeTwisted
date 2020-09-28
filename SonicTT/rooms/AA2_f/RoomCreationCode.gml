// initialize level settings
objProgram.in_past=false;
objLevel.act = 2;
objLevel.flower = sprFlowerAA;

//objLevel.bg = instance_create(x,y,objAAFutureBack);

with objProgram{ 
     if spawn_tag == 0 {
        cutscene = true;
     }
}

// setup titlecard
with objTitlecard
{
    title_string[0] = "Attraction";
    title_string[1] = "Attack";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 FUTURE";
}