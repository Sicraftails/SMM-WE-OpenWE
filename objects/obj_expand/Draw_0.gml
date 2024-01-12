draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + 356), ((camera_get_view_y(view_get_camera(0))) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover((camera_get_view_x(view_get_camera(0)) + 356), ((camera_get_view_y(view_get_camera(0)) + 2.5) - obj_cursor.anim_top), anim, 2)
}

