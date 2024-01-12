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
    }
}


