draw_sprite_ext(spr_expand_bg, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
draw_sprite_stretched(sprite_index, 0, x, y, 216, 100)
draw_set_font(global.font_google)
draw_set_color(c_title)
draw_text((x + 9), (y + 16), string_hash_to_newline(scr_language(89)))

