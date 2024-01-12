if (disabled == 0)
{
    if (selected == 0)
    {
        if (global.etiqueta1 == -1)
        {
            audio_play_sound(snd_aceptar, 0, false)
            global.etiqueta1 = idd
            selected = 1
            if (global.etiqueta1 != -1 && global.etiqueta2 != -1)
            {
                with (obj_etiquetas)
                {
                    if (selected == 0)
                        disabled = 1
                }
            }
        }
        else if (global.etiqueta2 == -1)
        {
            audio_play_sound(snd_aceptar, 0, false)
            global.etiqueta2 = idd
            selected = 1
            if (global.etiqueta1 != -1 && global.etiqueta2 != -1)
            {
                with (obj_etiquetas)
                {
                    if (selected == 0)
                        disabled = 1
                }
            }
        }
    }
    else
    {
        audio_play_sound(snd_item_deselect, 0, false)
        selected = 0
        if (global.etiqueta1 == idd)
            global.etiqueta1 = -1
        else if (global.etiqueta2 == idd)
            global.etiqueta2 = -1
        if (global.etiqueta1 == -1 || global.etiqueta2 == -1)
        {
            with (obj_etiquetas)
                disabled = 0
        }
    }
}
