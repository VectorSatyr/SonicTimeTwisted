// initialize level settings
with objLevel {
    act = 2;
    flower = sprFlowerDD;
    bg = instance_create(x,y,objDDPastBack);
}
objProgram.in_past = true;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Drifting";
    title_string[1] = "Dynamo";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 PAST";
}