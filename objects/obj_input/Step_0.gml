if (obj_persistent.modo_android == 0)
{
    if (can_write == 1 && instance_exists(obj_window_alert))
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
            with (obj_input_desc)
                can_write = 0
            can_write = 1
            keyboard_string = new_texto
        }
        else
            can_write = 0
    }
	var banned_chars = ["<", ">", ":", "\"", "\/", "\\", "|", "?", "*", "ñ", "Ñ", "á", "à", "â", "ã", "å", "ā", "ä", "ç", "ć", "č", "é", "è", "ë", "ê", "ę", "ė", "ē", "í", "ï", "ì", "î", "į", "ī", "ó", "ò", "ö", "ô", "õ", "ø", "ú", "ü", "ù", "û", "ū"];
	for (var i = 0; i < array_length(banned_chars); i++) {
		new_texto = string_replace_all(new_texto, banned_chars[i], "");
	}
	
}
