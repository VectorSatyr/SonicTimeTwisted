// player_reaction_layer_flip(local_id)

// flip depth_mask based on movement direction
depth_mask = 1+(sign(argument0.image_xscale) xor sign(x-xprevious));

// not a hard collision
return false;
