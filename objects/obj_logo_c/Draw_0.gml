draw_set_font(global.font_google)
draw_set_color(c_letter)
draw_set_halign(fa_center)
draw_text_color(x_pos, (y + 32), string_hash_to_newline(scr_language(0)), c_title, c_title, c_title, c_title, 1)
draw_text(x_pos, (y + 66), string_hash_to_newline(scr_language(1)))
draw_set_halign(fa_left)

