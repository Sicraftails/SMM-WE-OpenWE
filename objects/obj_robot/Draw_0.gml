if (active == 0)
    draw_sprite(spr_card_bg, 0, ((((camera_get_view_x(view_get_camera(0))) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right), ((camera_get_view_y(view_get_camera(0))) + 70))
draw_sprite_ext(sprite_index, image_index, ((((camera_get_view_x(view_get_camera(0))) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right), ((camera_get_view_y(view_get_camera(0))) + 68), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(((((camera_get_view_x(view_get_camera(0))) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right), ((camera_get_view_y(view_get_camera(0))) + 70), anim, 2)
}


