/// @description  Reposition based on speed, reduce lifetime, and destroy if necessary

lifetime -= 1
x += xspeed
y += yspeed

yspeed += 0.1

image_angle += 0.5
image_alpha = lifetime / original_lifetime

if (lifetime == 0)
{
  instance_destroy()
}

