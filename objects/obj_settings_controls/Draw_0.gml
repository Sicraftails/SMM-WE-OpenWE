draw_set_halign(fa_center)
draw_sprite(sprite_index, -1, x, y)
draw_text(((camera_get_view_x(view_get_camera(0)) + 100) + xx), ((camera_get_view_y(view_get_camera(0)) + 10) + yy), string_hash_to_newline(text))
draw_set_halign(fa_left)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 2)
}

