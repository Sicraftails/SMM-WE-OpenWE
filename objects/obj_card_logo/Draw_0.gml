draw_sprite(spr_cartels_bg, active, (camera_get_view_x(view_get_camera(0)) + x_pos), (camera_get_view_y(view_get_camera(0)) + y_pos))
draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + x_pos), (camera_get_view_y(view_get_camera(0)) + y_pos), 1, 1, 0, c_white, image_alpha)
if (active == 1)
{
    anim += 0.3
    scr_anim_hover((camera_get_view_x(view_get_camera(0))) + x_pos, (camera_get_view_y(view_get_camera(0))) + y_pos, anim, 0)
}


