// initialize level settings
with objLevel {
    act =2;
    flower = sprFlowerPP;
    bg = instance_create(x,y,objPPBackground);
}

objProgram.in_past=false;


// setup titlecard
with objTitlecard
{
    title_string[0] = "Planetary";
    title_string[1] = "Panic";
    title_string[2] = "Zone";
    title_string[3] = "ACT2";
}