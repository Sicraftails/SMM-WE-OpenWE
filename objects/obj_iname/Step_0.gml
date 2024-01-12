var buff;
image_index = write
if (obj_persistent.modo_android == 0)
{
    if (write == 1)
    {
        if (string_width(string_hash_to_newline(new_texto)) < TX || keyboard_check(vk_backspace))
        {
            buff = string_replace_all(keyboard_string, "#", "")
            new_texto = buff
        }
        else
            keyboard_string = new_texto
    }
    if mouse_check_button_pressed(mb_left)
    {
        if (mouse_x >= x && mouse_x <= (x + TX) && mouse_y >= y && mouse_y <= (y + TY))
        {
            with (obj_lp)
                write = 0
            write = 1
            keyboard_string = new_texto
        }
        else
            write = 0
    }
    if keyboard_check(vk_return)
        write = 0
}

