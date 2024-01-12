draw_self()
draw_set_font(global.font_google)
draw_text((x + 33), (y + 6), string_hash_to_newline(text))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, (y + 1), anim, 2)
}
