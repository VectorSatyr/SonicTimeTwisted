// initialize level settings
// initialize level settings

with objLevel {

    bg = instance_create(x,y,objRRFBack);
    act = 2;
    musicLoop = bgmRRFutureLoop;
    musicIntro = bgmRRFutureIntro;
    flower = sprFlowerRR;

}

objProgram.in_past=false;

// setup titlecard
with objTitlecard
{
    title_string[0] = "Raging";
    title_string[1] = "Ruins";
    title_string[2] = "Zone";
    title_string[3] = "ACT2 FUTURE";
}