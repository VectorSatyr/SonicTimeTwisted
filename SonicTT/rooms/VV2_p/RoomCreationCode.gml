// initialize level settings
objLevel.act = 2;
objLevel.flower = sprFlowerVV;

with objLevel bg = instance_create(x,y,objVVPastBack2);

objProgram.in_past = true;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Viridian";
    title_string[1] = "Valley";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 PAST";
}