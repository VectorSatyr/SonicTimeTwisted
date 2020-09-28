// initialize level settings
objLevel.act = 2;
objLevel.flower = sprFlowerAA;
objProgram.in_past = true;

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
    title_string[3] = "ACT2 PAST";
}