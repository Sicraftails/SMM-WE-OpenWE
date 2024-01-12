draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, button_c, 1)
draw_set_font(global.font_google)
draw_set_color(c_button)
draw_set_halign(fa_center)
draw_text((x + (sprite_width / 2)), (y + posy), string_hash_to_newline((text)))
draw_set_halign(fa_left)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 1)
}


