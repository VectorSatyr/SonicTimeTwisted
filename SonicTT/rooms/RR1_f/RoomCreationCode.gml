// initialize level settings
// initialize level settings

with objLevel {

    bg = instance_create(x,y,objRRFBack);
    act = 1;
    flower = sprFlowerRR;

}

objProgram.in_past=false;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Raging";
    title_string[1] = "Ruins";
    title_string[2] = "Zone";
    title_string[3] = "ACT1 FUTURE";
    
    if objProgram.spawn_tag == 0
        instance_destroy();
}