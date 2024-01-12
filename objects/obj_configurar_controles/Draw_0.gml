draw_self()
draw_set_font(global.font_google)
draw_set_color(c_color)
draw_text((x + 33), (y + 6), string_hash_to_newline(text))
if (effect_hover == 1)
    draw_sprite(spr_settings_button_big_hover, 0, x, y)

