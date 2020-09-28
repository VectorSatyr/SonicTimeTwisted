
if instance_exists(objSSPlayer) {
    x = objSSPlayer.x - cos(degtorad(objSSPlayer.move_direction)) * distance;
    y = objSSPlayer.y + sin(degtorad(objSSPlayer.move_direction)) * distance;
    z = max(objSSPlayer.z + zf, -8);
    
    xto = objSSPlayer.x;
    yto = objSSPlayer.y;
    zto = objSSPlayer.z + zt;
}

dir1 = point_direction(xto, yto, x, y) - 90;
dir2 = d3d_point_direction(xto, yto, -zto, x, y, -z);


