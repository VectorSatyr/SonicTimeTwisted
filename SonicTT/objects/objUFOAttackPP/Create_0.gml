action_inherited();
reaction_script=player_reaction_knock_ufo;
remove=0;

test =floor(random(2));
if test == 1 {

    x=__view_get( e__VW.XView, 0 )+454;
    hspeed = -4;

} else { 
    x=__view_get( e__VW.XView, 0 )-454;
    hspeed = 4;
}

y=__view_get( e__VW.YView, 0 )-256+random(512);

alarm[0]=2000;

color = c_white;


