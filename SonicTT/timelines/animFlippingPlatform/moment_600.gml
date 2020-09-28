image_index = 1;
layer=4;

with objLevel.player[0] {
        
        if (terrain_id == other.id && landed) {
            
            player_is_falling();
        
        }
}

if in_view(0,128) {
    
    audio_play_sound(sndAADropBumperReset,2,0);
    
    }

