draw_sprite_ext(sprite_index, image_index, ((camera_get_view_x(view_get_camera(0)) + 6) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 133), 1, 1, 0, c_white, 1)
if (global.condiciones == 1)
    draw_sprite(spr_cond_iconspanel, global.condiciones_count, ((camera_get_view_x(view_get_camera(0)) + 27) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 135))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(((camera_get_view_x(view_get_camera(0)) + 6) - obj_cursor.anim_left), (camera_get_view_y(view_get_camera(0)) + 133), anim, 0)
}

