draw_self()
draw_set_font(global.font_google)
draw_set_color(c_title)
var nn_text = scr_add3points(texto, 80, 18)
draw_text((x + 6), (y + 32), string_hash_to_newline((nn_text)))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(x, y, anim, 0)
}


