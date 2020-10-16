/// player_reaction_layer_flip(local_id)
var local_id = argument0;

// flip depth_mask based on movement direction
depth_mask = (sign(local_id.image_xscale) == sign(x - xprevious)) ? $01 : $02;

// not a hard collision
return false;