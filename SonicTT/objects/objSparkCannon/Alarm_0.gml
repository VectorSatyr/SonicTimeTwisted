with instance_create(x+(-image_xscale*4),y,objSpark) {

    y+=other.image_xscale*2;
    hspeed =-2*other.image_xscale;
    
}

audio_play_sound(sndSSLaser,4,0);
alarm[0]=120;

