var i_d = ds_map_find_value(async_load, "id")
if (i_d == texto)
{
    if ds_map_find_value(async_load, "status")
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
            text_temp = ds_map_find_value(async_load, "result")
            var buff = string_replace_all(text_temp, "#", "")
            new_texto = buff
        }
	var banned_chars = ["<", ">", ":", "\"", "\/", "\\", "|", "?", "*", "ñ", "Ñ", "á", "à", "â", "ã", "å", "ā", "ä", "ç", "ć", "č", "é", "è", "ë", "ê", "ę", "ė", "ē", "í", "ï", "ì", "î", "į", "ī", "ó", "ò", "ö", "ô", "õ", "ø", "ú", "ü", "ù", "û", "ū"];
	for (var i = 0; i < array_length(banned_chars); i++) {
		new_texto = string_replace_all(new_texto, banned_chars[i], "");
	}
    }
}