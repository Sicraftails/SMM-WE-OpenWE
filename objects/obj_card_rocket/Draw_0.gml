draw_sprite(spr_rocket_draw, 0, (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right), (camera_get_view_y(view_get_camera(0)) + 184))
if (ready == 0)
    draw_sprite_ext(sprite_index, image_index, (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right), (camera_get_view_y(view_get_camera(0)) + 184), 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))), (camera_get_view_y(view_get_camera(0)) + 216), 1, 1, 0, c_white, 1)
if (counter_draw == 1)
    draw_sprite(spr_rocket_counter, counter_anim, (camera_get_view_x(view_get_camera(0)) + 192), (camera_get_view_y(view_get_camera(0)) + 108))