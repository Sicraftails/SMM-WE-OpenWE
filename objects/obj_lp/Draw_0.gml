draw_self()
draw_set_font(global.font_google)
string_l = string_length(new_texto)
if (string_l > 13)
    string_l = 13
new_string = string_repeat("*", string_l)
draw_set_color(c_black)
draw_text((x + 20), (y + 2), string_hash_to_newline(new_string))

