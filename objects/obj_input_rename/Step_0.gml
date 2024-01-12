var buff;
if (obj_persistent.modo_android == 0)
{
    if (can_write == 1 && instance_exists(obj_window_alert))
    {
        if (string_width(string_hash_to_newline(new_texto)) < (TX - 48) || keyboard_check(vk_backspace))
        {
            buff = string_replace_all(keyboard_string, "#", "")
            new_texto = buff
        }
        else
            keyboard_string = new_texto
    }
}

