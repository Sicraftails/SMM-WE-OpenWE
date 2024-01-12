draw_sprite_stretched(sprite_index, 0, (camera_get_view_x(view_get_camera(0)) + xx), ((camera_get_view_y(view_get_camera(0)) + yy) - anim), ancho, 28)
draw_sprite(spr_toast_icons, icon, ((camera_get_view_x(view_get_camera(0)) + xx) + 5), (((camera_get_view_y(view_get_camera(0)) + yy) + 5) - anim))
draw_set_font(global.font_google)
draw_set_color(c_black)
draw_text(((camera_get_view_x(view_get_camera(0)) + xx) + 30), (((camera_get_view_y(view_get_camera(0)) + yy) + 6) - anim), string_hash_to_newline((texto)))


