draw_sprite_ext(spr_expand_bg, 1, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), (camera_get_view_width(view_get_camera(0)) / 16), (camera_get_view_height(view_get_camera(0)) / 16), 0, c_white, 1)
draw_sprite_stretched(sprite_index, 0, x, y, 276, 112)
draw_set_font(global.font_google)
draw_set_color(c_title)
draw_set_halign(fa_center)
draw_text((camera_get_view_x(view_get_camera(0)) + (camera_get_view_width(view_get_camera(0)) / 2)), (y + 36), string_hash_to_newline(text))
draw_set_halign(fa_left)

