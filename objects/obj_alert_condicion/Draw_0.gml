draw_sprite_ext(spr_cond_alert, 0, (camera_get_view_x(view_get_camera(0)) + 54), (camera_get_view_y(view_get_camera(0)) + 98), 17, 3, 0, c_white, 1)
draw_sprite(spr_cond_icons, global.condiciones_count, (camera_get_view_x(view_get_camera(0)) + 65), (camera_get_view_y(view_get_camera(0)) + 103))
draw_set_font(global.font_google)
draw_set_color(c_white)
draw_text((camera_get_view_x(view_get_camera(0)) + 106), (camera_get_view_y(view_get_camera(0)) + 101), string_hash_to_newline(texto[cond_count]))
if (lose == 1)
{
    draw_set_color(make_colour_rgb(255, 112, 51))
    draw_text((camera_get_view_x(view_get_camera(0)) + 106), (camera_get_view_y(view_get_camera(0)) + 127), string_hash_to_newline(scr_language(171)))
}

