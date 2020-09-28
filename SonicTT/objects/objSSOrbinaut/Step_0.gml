/// @description  Enemy behavior

// ignore if turned around
if not alarm[0]
{
    if mode == 0 {
        vspeed=0;
        // direction
        with instance_nearest(x, y, objSSPlayer) other.max_speed = sign(x-(other.x-16))*0.5; //{if x<other.x-16 other.max_speed = -0.5; else if x>other.x+16 other.max_speed = 0.5;}

        // speed
        if hspeed<max_speed hspeed = min(hspeed+0.025, max_speed); else
        if hspeed>max_speed hspeed = max(hspeed-0.025, max_speed);
        
        // orb rotation
        angle += pi/30*vspeed;
        
    } else {
            hspeed=0;
            // direction
            with instance_nearest(x, y, objSSPlayer) other.max_speed = sign(y-(other.y-16))*0.5; //{if x<other.x-16 other.max_speed = -0.5; else if x>other.x+16 other.max_speed = 0.5;}
    
            // speed
            if vspeed<max_speed vspeed = min(vspeed+0.025, max_speed); else
            if vspeed>max_speed vspeed = max(vspeed-0.025, max_speed);
            
            // orb rotation
            angle += pi/30*vspeed;

        }
}


// adjust angles as the complete circles
if (angle>pi*2) angle -= pi*2; else
if (angle<pi*2) angle += pi*2;

// orb z-rotation
shift = 16*sin(angle);

// update orb position
for (var i=0; i<3; i+=1)
{
    orbs[i].x = x+(48+shift)*cos(angle+(pi*(2/3))*i);
    orbs[i].y = y+(48+shift)*sin(angle+(pi*(2/3))*i);
}

/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);

depth1= depth;

