if (obj_persistent.modo_android == 0)
{
    if (can_write == 1)
    {
        if (string_width(string_hash_to_newline((new_texto))) < (TX - 48) || keyboard_check(vk_backspace))
        {
            var buff = string_replace_all(keyboard_string, "#", "")
            new_texto = buff
        }
        else
            keyboard_string = new_texto
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (mouse_x >= x && mouse_x <= (x + TX) && mouse_y >= y && mouse_y <= (y + TY))
        {
            can_write = 1
            keyboard_string = new_texto
        }
        else
            can_write = 0
    }
}


