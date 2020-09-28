// initialize level settings
objLevel.act = 2;
objLevel.flower = sprFlowerDD;
objLevel.bg = instance_create(x,y,objDDFutureBackAct2);

objProgram.in_past = false;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Drifting";
    title_string[1] = "Dynamo";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 FUTURE";
}