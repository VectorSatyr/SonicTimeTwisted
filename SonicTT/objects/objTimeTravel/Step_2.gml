/// @description Animate
event_inherited();
shift += cycle_speed; // this will cycle the colors
switch (state)
{
case "exiting": image_index += frame_speed; break;
case "entering": image_index -= frame_speed; break;
}