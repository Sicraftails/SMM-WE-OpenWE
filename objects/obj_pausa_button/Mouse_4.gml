if ((!instance_exists(obj_settings_panel)) && canpress == 1 && image_index == 0)
{
    switch (type)
    {
        case 0:
            image_index = 1;
            audio_play_sound(snd_pausa, 0, false);
            c_button = 16777215;
            break;
        case 1:
            if (global.lives > 1 || global.dsm == 0)
            {
                image_index = 1;
                audio_play_sound(snd_volver_a_empezar, 0, false);
                c_button = 16777215;
            }
            break;
        case 2:
            if (global.lives > 0 || global.dsm == 0)
            {
                image_index = 1;
                audio_play_sound(snd_salir_del_nivel, 0, false);
                if (global.postnivel != 0)
                    global.postnivel = 0;
                c_button = 16777215;
            }
            break;
    }
    alarm[1] = 6;
}