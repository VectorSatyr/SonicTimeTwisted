if selectState==0 {

    draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);

}
else if selectState==1{

if slots[selectCheck].iconIndex > 11
    draw_sprite_ext(sprSelectStage,2,x,y-44,image_xscale,image_yscale,0,c_white,1);
    else draw_sprite_ext(sprSelectStage,stageLeftRight,x,y-44,image_xscale,image_yscale,0,c_white,1);

}

if selectState ==2 {
    draw_sprite_ext(sprCharSelect,0,x,y+32,1,1,0,c_white,1);
}

if selectState==3 {

    draw_sprite_ext(sprDeleteConfirm,0,x,y,image_xscale,image_yscale,0,c_white,1);

}

