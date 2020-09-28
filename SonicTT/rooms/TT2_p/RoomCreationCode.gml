// initialize level settings
with objLevel {
    act = 2;
    flower = sprFlowerTT;
}

with objLevel bg = instance_create(x,y,objTTPastBack2);

objProgram.in_past = true;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Tidal";
    title_string[1] = "Tubes";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 PAST";
}