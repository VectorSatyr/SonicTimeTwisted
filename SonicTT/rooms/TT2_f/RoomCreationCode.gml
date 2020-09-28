// initialize level settings

with objLevel {
    act = 2;
    flower = sprFlowerTT;
    bg = instance_create(x,y,objTTFutureBack2);
}

objProgram.in_past=false;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Tidal";
    title_string[1] = "Tubes";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 FUTURE";
}