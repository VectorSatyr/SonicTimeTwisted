/// @description  Execute end of path

// get absolute speed for conversion
if xtable > 0 {
    var offset = ds_list_size(xtable)-1;
    var path_xspeed = ds_list_find_value(xtable, offset)-ds_list_find_value(xtable, offset-1);
    var path_yspeed = ds_list_find_value(ytable, offset)-ds_list_find_value(ytable, offset-1);

    // states and flags
    state = player_state_fall;
    
    // movement and collision
    xspeed = (cosine[angle]*path_xspeed)-(sine[angle]*path_yspeed);
    yspeed = -(sine[angle]*path_xspeed)+(cosine[angle]*path_yspeed);
    
    // set air state
    player_in_air();
    
    // turn towards movement
    if path_xspeed!=0 facing = sign(path_xspeed);
}

