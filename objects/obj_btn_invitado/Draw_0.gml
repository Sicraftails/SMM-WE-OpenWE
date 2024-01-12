draw_sprite_ext(sprite_index, effect_hover, x, y, 1, 1, 0, c_white, alpha)
draw_set_font(global.font_google)
draw_set_color(c_button)
draw_set_halign(fa_center)
draw_text((x + (sprite_width / 2)), (y + posy + 1), string_hash_to_newline(text))
draw_set_halign(fa_left)

