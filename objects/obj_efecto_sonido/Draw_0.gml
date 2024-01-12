if (full == 1)
    draw_sprite(sprite_index, image_index, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)))
else
    draw_self()

