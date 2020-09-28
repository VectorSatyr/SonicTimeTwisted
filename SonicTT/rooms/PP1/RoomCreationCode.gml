// initialize level settings
objLevel.act = 1;
// initialize level settings

objLevel.flower = sprFlowerPP;

with objLevel bg = instance_create(x,y,objPPBackground);

objProgram.in_past=false;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Planetary";
    title_string[1] = "Panic";
    title_string[2] = "Zone";
    title_string[3] = "ACT1";
}