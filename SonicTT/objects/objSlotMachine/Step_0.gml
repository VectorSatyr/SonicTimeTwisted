/// @description  Handle state
if not active
{
        
    player_id=noone;
}
else
{

    
    with player_id {
    
    x = other.x;
    y = other.y;
    
    
    }
     if !audio_is_playing(sndAASlotSwitch)
        audio_play_sound(sndAASlotSwitch,2,0);   
        for(i=0; i< 3; i+=1;) {
            
           if slot_state[i] == 0{
                
            if slot_pos[i] >=10 slot_pos[i] = 1;
            else
                slot_pos[i]+=.25;
            }
            }
}

