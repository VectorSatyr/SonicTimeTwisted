// initialize level settings
objProgram.in_past = false;

with objLevel {

    bg = instance_create(x,y,objDDFutureBack);
    act = 1;
    flower = sprFlowerDD;

    if objProgram.spawn_tag==0 {
        objProgram.cutscene = true;
        started=true;
    
    }
}

// setup titlecard
with objTitlecard
{
    if objProgram.spawn_tag== 0
        mode=3;
    title_string[0] = "Drifting";
    title_string[1] = "Dynamo";
    title_string[2] = "Zone";
    title_string[3] = "ACT1 FUTURE";
}