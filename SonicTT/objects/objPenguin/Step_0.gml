if walk == 0 {
with objLevel.player[0]{

    if x+34 > other.x and x-32 < other.x and other.vspeed == 0// right and above
    {
      other.gravity = .22;
      other.gravity_direction = 270;
      other.vspeed = -10;
      }
    }
    
if vspeed > 0 and (place_meeting(x,y,objField) or place_meeting(x,y,objSolid)){
    y=yprevious;
    vspeed = 0;
    gravity=0;
    walk = true;
}}

else{

    x = xstart+cos(objScreen.image_index/16)*4;
}

