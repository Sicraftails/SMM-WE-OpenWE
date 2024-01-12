var buff;
if (obj_persistent.modo_android == 0)
{
    if (can_write == 1 && instance_exists(obj_window_alert))
    {
        if (string_length(string_hash_to_newline(new_texto)) <= 91 || keyboard_check(vk_backspace))
        {
            buff = string_replace_all(keyboard_string, "#", "")
            new_texto = buff
        }
        else
            keyboard_string = new_texto
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (mouse_x >= x && mouse_x <= (x + (TX - 26)) && mouse_y >= y && mouse_y <= (y + TY))
        {
            with (obj_input)
                can_write = 0
            can_write = 1
            keyboard_string = new_texto
        }
        else
            can_write = 0
    }
if string_length(string_hash_to_newline(new_texto)) = 48 and wrap = 0{
    keyboard_string += "\n";
	wrap = 1
}
else if string_length(string_hash_to_newline(new_texto)) = 48 and wrap = 1 {
	wrap = 0
}
}
global.desc = new_texto