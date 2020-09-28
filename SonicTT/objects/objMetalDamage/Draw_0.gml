draw_self();

switch draw {

case 0:

break;

case 1:
    draw_sprite_ext(sprMetalStopVoice,0,x+12,ystart-16,1,1,0,c_white,1);
break;

case 2:
    draw_sprite_ext(sprMetalNoHarmVoice,0,x+12,ystart-16,1,1,0,c_white,1);
break;

case 3:
    draw_sprite_ext(sprMetalTheCreatorVoice,0,x+12,ystart-16,1,1,0,c_white,1);
break;

}

