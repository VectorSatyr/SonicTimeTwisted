// initialize level settings
objLevel.act = 1;
// initialize level settings
objLevel.flower = sprFlowerAA;

with objLevel bg = instance_create(x,y,objFinalBossBackground);

objProgram.in_past = false;
objProgram.spawn_tag = 0;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Galacnik";
    title_string[1] = "Gauntlet";
    title_string[2] = "Zone";
    title_string[3] = "";
}