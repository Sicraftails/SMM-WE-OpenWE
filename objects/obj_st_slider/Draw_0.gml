var porcentaje;
draw_self()
draw_sprite_part(sprite_index, 1, 0, 0, (sprite_width * value_), sprite_height, x, (y - sprite_get_yoffset(sprite_index)))
draw_sprite(spr_st_slider, index, (x + (sprite_width * value_)), (y + 1))
draw_set_font(global.font_google)
draw_set_color(c_letters)
porcentaje = round((value_ * 100))
draw_text((camera_get_view_x(view_get_camera(0)) + 324), (camera_get_view_y(view_get_camera(0)) + 140), string_hash_to_newline((string(porcentaje) + "%")))

