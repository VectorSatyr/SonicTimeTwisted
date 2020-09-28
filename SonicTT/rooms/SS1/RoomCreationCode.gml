// initialize level settings
objLevel.act = 1;
objLevel.flower = sprFlowerAA;
objLevel.paddle_switches = 0;

with objLevel bg = instance_create(x,y,objSSBack);

objProgram.in_past=false;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Sunken";
    title_string[1] = "Saucer";
    title_string[2] = "Zone";
    title_string[3] = "";
}

if objProgram.spawn_tag == 0 {
    objLevel.timer = 36000;
    objGameData.rings[0] = 0;
    objProgram.cutscene = false;
}