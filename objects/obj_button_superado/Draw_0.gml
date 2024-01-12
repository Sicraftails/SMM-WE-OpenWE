draw_sprite_ext(sprite_index, image_index, camera_get_view_x(view_get_camera(0))+x1, camera_get_view_y(view_get_camera(0))+148, 1, 1, 0, c_white, 1);
draw_set_font(global.font_google)
draw_set_color(c_button)
draw_set_halign(fa_center)
draw_text((camera_get_view_x(view_get_camera(0))+x1 + (sprite_width / 2)), (camera_get_view_y(view_get_camera(0))+148 + posy), string_hash_to_newline((text)))
draw_set_halign(fa_left)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(camera_get_view_x(view_get_camera(0))+x1, camera_get_view_y(view_get_camera(0))+148, anim, 1)
}


