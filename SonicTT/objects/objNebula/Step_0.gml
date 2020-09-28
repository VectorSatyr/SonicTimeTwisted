    whirl_angle += angle_change;

    var shift = -128 * scale;
    
    surface_set_target(surface_warp);
    texture_set_interpolation(true);
    d3d_transform_set_rotation_z(angle_warp);
    d3d_transform_add_translation(128, 128, 0);
    draw_surface_ext(surface_warp, shift, shift, scale, scale, 0, c_white, 1);
    d3d_transform_set_identity();
    draw_sprite_ext(WhirlSpr, 0, 128, 128, 1, 1, whirl_angle, c_white, 1);
    texture_set_interpolation(false);
    surface_reset_target();

