if outside_view()
    exit
draw_sprite_ext(sprite_index, image_index, (camera_get_view_x(view_get_camera(0)) + x_pos), ((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)
draw_sprite(sprite_card, obj_draw, (camera_get_view_x(view_get_camera(0)) + x_pos), ((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top))
draw_sprite(s_card_top, bg_color, (camera_get_view_x(view_get_camera(0)) + x_pos), ((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top))
if (disabled == 1)
    draw_sprite(spr_card_disabled, 0, (camera_get_view_x(view_get_camera(0)) + x_pos), (camera_get_view_y(view_get_camera(0)) - obj_cursor.anim_top))
if (effect_hover == 1 && disabled == 0)
{
    anim += 0.3
    draw_sprite_ext(spr_nm_buttons_hover, anim, (camera_get_view_x(view_get_camera(0)) + x_pos), (((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top) + 6), 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_nm_buttons_hover, anim, ((camera_get_view_x(view_get_camera(0)) + x_pos) + sprite_width), (((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top) + 6), 1, 1, 270, c_white, 1)
    draw_sprite_ext(spr_nm_buttons_hover, anim, (camera_get_view_x(view_get_camera(0)) + x_pos), (((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top) + 27), 1, 1, 90, c_white, 1)
    draw_sprite_ext(spr_nm_buttons_hover, anim, ((camera_get_view_x(view_get_camera(0)) + x_pos) + sprite_width), (((camera_get_view_y(view_get_camera(0)) - etop) - obj_cursor.anim_top) + 27), 1, 1, 180, c_white, 1)
}


