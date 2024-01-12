///@description Draw the sprites
draw_self()
if (effect_hover == 1)
{
    anim += 0.3
    draw_sprite_ext(spr_nm_buttons_hover, anim, x, y, 1, 1, 0, c_white, 1)
    draw_sprite_ext(spr_nm_buttons_hover, anim, (x + 21), y, 1, 1, 270, c_white, 1)
    draw_sprite_ext(spr_nm_buttons_hover, anim, x, (y + 21), 1, 1, 90, c_white, 1)
    draw_sprite_ext(spr_nm_buttons_hover, anim, (x + 21), (y + 21), 1, 1, 180, c_white, 1)
}
