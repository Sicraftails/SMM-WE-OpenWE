var copy, new_string;
draw_self()
draw_set_font(global.font_google)
draw_set_color(c_black)
if (string_width(string_hash_to_newline(new_texto)) > 100)
{
    var copy = string_copy(new_texto, 0, 20)
    var new_string = (copy + "...")
}
else
    new_string = new_texto
draw_text((x + 20), (y + 2), string_hash_to_newline(new_string))


