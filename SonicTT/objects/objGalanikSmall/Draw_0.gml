if xprevious <> x || yprevious <> y {

    var xdir = sign(x-xprevious);
    var ydir = sign(y-yprevious);

    if x3StepsBack <> x2StepsBack || y3StepsBack <> y2StepsBack {
        d3d_set_fog(1,c_green,0,0);
            draw_sprite_ext(sprite_index,image_index,x3StepsBack+xdir*3,y3StepsBack-ydir*3,image_xscale,image_yscale,0,c_white,.5);
        d3d_set_fog(0,c_white,0,0);
    }
    
    if xprevious <> x2StepsBack || yprevious <> y2StepsBack {
        d3d_set_fog(1,c_blue,0,0);
            draw_sprite_ext(sprite_index,image_index,x2StepsBack+xdir*3,y2StepsBack-ydir*3,image_xscale,image_yscale,0,c_white,.5);
        d3d_set_fog(0,c_white,0,0);
    }
    
    d3d_set_fog(1,c_red,0,0);
    draw_sprite_ext(sprite_index,image_index,xprevious+xdir*3,yprevious-ydir*3,image_xscale,image_yscale,0,c_white,.5);
    d3d_set_fog(0,c_white,0,0);
}




draw_self();


x3StepsBack = x2StepsBack
y3StepsBack = y2StepsBack
x2StepsBack = xprevious;
y2StepsBack = yprevious;

/*
var xdir = sign(x-xprevious);
var ydir = sign(y-yprevious);
var color = c_red;

for(i=0; i < 64; i+=4;) {

    d3d_set_fog(1,color,0,0);
        draw_sprite_ext(sprite_index,image_index,x+i*xdir,y-i*ydir,image_xscale,image_yscale,0,c_white,.5);
        
        show_debug_message(x-i*xdir);
        show_debug_message(y*+i*ydir);
        
    d3d_set_fog(0,c_white,0,0);

    if color == c_white {
    
        color = c_red;
    
    } else if color == c_red {
    
        color = c_blue;
        
    } else if color == c_blue {
    
        color = c_green;
        
    } else if color = c_green{
    
        color = c_white;
    
    }
}
*/

/* */
/*  */
