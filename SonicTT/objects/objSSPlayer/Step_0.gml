var __b__;
__b__ = action_if_variable(started, true, 0);
if __b__
{
{
/// Controls

if !hit {

if input_check_pressed(cACTION) and onGround {

      jumping = true;
      zspeed = jump_force;
      onGround = false;
      audio_play_sound(sndJump,0,0);    

}

if jumping == true && jump_release == false{

        jump_force +=.25;

    if input_check_released(cACTION) {
    
        jump_release = true;
    
    } else if jump_force >= 6.5 {
    
         jump_release = true;
         jump_force=6.5;
         
    }
    
    zspeed = jump_force;

}


if (input_check(cLEFT)) xaxis = -1;
else if (input_check(cRIGHT)) xaxis = 1;
else xaxis = 0;

if (input_check(cUP)) yaxis = -1;
else if (input_check(cDOWN)) yaxis = 4;
else yaxis = 0;

}

///Movement

var xmove, ymove, f;

if (bump_radius < max_radius)
{
  bump_radius = bump_radius + (max_radius - bump_radius) * 0.25;
}

if (!instance_position(x, y, objTrack))
{
  onGround = false;
  noTrack = true;
}
else
{
  noTrack = false;
}

move_direction += xaxis * -1.5;

if (bounce_timer)
{
  bounce_timer -= 1;
  xmove = cos(degtorad(bounce_direction)) * move_speed;
  ymove = -sin(degtorad(bounce_direction)) * move_speed;
}
else
{
  move_speed += yaxis * -0.1;
  move_speed = max(move_speed, -2);
  if move_speed > 8 {
    move_speed -= .25;
  }
  
  xmove = cos(degtorad(move_direction)) * move_speed;
  ymove = -sin(degtorad(move_direction)) * move_speed;
}

if (bounce_timer)
{
  f = 0.1;
}
else
if (yaxis == 0)
{
  f = 0.1;
}
else
if (xaxis != 0)
{
  f = 0.1;
}
else
{
  f = 0;
}

if (move_speed > f) move_speed -= f;
else if (move_speed < -f) move_speed += f;
else move_speed = 0;

x += xmove;
y += ymove;



var b;

b = PlayerCollision();

if (b)
{
  move_speed *= 0.95;
}

__view_set( e__VW.XView, 0, x - __view_get( e__VW.WView, 0 ) / 2 );
__view_set( e__VW.YView, 0, y - __view_get( e__VW.HView, 0 ) / 2 );

image_angle = move_direction;
__view_set( e__VW.Angle, 0, 90 - move_direction );

/// set depth
depth = min(2000,distance_to_object(objSSCamera)/20);

depth1= depth;

///shadow

with shadow { x = other.x; y = other.y; }

}
}
/// track position
PlayerUpdateRacerProgress();

/// Landing
if (!onGround)
{
    zspeed-=gravity_force;
    z += zspeed

  if (z <= radius)
  {
    if (z >= 8 and !noTrack)
    {
      z = radius;
      zspeed = 0;
      onGround = true;
      hit=false;
      bump_radius = 2;
      jumping = false;
      jump_release=false;
      jump_force =4;
      
      if closing > 0 {
      if objGameData.character_id[0] == 1 {
        sprite_index=sprSonicSSEnd;
        }
      else if objGameData.character_id[0] == 2 {
        sprite_index=sprTailsSSEnd;
      } else sprite_index=sprKnucklesSSEnd;
      
        image_speed = .25;
      }
      
        if kill > 0 && alarm[0] == -1 {
    
            alarm[0]=30;
    
        }
    }
    else {
    
    if (z <= -1500)
    {
    
        if kill < 1 {
            objSSMessages.alarm[1] = 30;
            kill = 2;
        }
        if alarm[0] = -1 {
            
            alarm[0]=30;
            exit;
      }
    }
    }
  }

  zspeed -= 0.2;
  zspeed = max(zspeed, -8);
}

