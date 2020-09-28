// initialize level settings
// initialize level settings

with objLevel {

    bg = instance_create(x,y,objRRPBack);
    act = 2;
    flower = sprFlowerRR;

}

objProgram.in_past=true;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Raging";
    title_string[1] = "Ruins";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 PAST";
}