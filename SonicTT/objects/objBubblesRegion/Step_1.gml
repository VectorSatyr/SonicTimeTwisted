/// @description Cooldown
for (var i = 0; i < total_players; ++i)
{
	if (target_ignore_time[i] > 0) target_ignore_time[i]--;
}