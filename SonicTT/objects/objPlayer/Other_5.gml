var __b__;
__b__ = action_if_variable(persistent, false, 0);
if __b__
{
/// Clean up
ds_list_destroy(terrain_list);
ds_list_destroy(xtable);
ds_list_destroy(ytable);
audio_emitter_free(audio);

// Remove id
with objLevel{ player[other.player_id] = noone; }

}
