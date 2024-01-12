if (texto != "" && press == 0)
{
    audio_play_sound(snd_aceptar, 0, false)
    if (global.press_load == 1)
    {
        global.last_level = texto
        global.press_load = 0
        room_goto(rm_editor)
    }
    else
    {
        global.levelguardabot = texto
        obj_gb_button.press = 1
        instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_gb_level)
    }
}

