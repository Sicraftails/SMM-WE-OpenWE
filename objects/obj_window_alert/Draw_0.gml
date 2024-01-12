draw_set_font(global.font_google)
draw_set_color(c_title)
draw_sprite_stretched(sprite_index, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), camera_get_view_width(view_get_camera(0)), camera_get_view_height(view_get_camera(0)))
draw_text_color((camera_get_view_x(view_get_camera(0)) + 20), (camera_get_view_y(view_get_camera(0)) + 8), string_hash_to_newline(scr_language(88)), c_title, c_title, c_title, c_title, 1)
draw_text_color((camera_get_view_x(view_get_camera(0)) + 20), (camera_get_view_y(view_get_camera(0)) + 38), string_hash_to_newline(scr_language(189)), c_title, c_title, c_title, c_title, 1)

