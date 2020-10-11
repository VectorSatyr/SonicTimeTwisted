/// @description Animate
event_inherited();
with (player_id)
{
	// rotate around post
	depth = (timeline_position > 3 and timeline_position < 10) ? other.depth + 1 : 0;
}