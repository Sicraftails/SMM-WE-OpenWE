draw_sprite_ext(sprite_index, image_index, ((camera_get_view_x(view_get_camera(0)) + 6) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 109), 1, 1, 0, c_white, 1)
if (active == 1)
    draw_set_font(global.time_digits_white)
else
    draw_set_font(global.time_digits)
draw_text(((camera_get_view_x(view_get_camera(0)) + 24) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 116), string_hash_to_newline(string_add_zeros(obj_levelmanager.leveltime, 3)))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(((camera_get_view_x(view_get_camera(0)) + 6) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 109), anim, 0)
}

