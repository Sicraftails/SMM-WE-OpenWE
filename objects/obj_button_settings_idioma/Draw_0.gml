draw_self()
draw_set_font(global.font_google)
draw_set_color(c_color)
draw_text((x + 25), (y + 1), string_hash_to_newline(text))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 2)
}

