if (obj_levelmanager.editor == 1 && obj_editormanager.expand_open != 2 && ps == 1 && (!instance_exists(obj_ventana)) && obj_creator_jugar_editar.image_speed == 0)
{
    with (obj_panelsparent)
    {
        ps = 0
        alarm[0] = 15
    }
    if (instance_exists(obj_condiciones) && obj_condiciones.image_speed == 0)
    {
        audio_play_sound(snd_panel_close, 0, false)
        with (obj_condiciones)
            event_user(0)
    }
    else if (!instance_exists(obj_condiciones))
    {
        instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_condiciones)
        audio_play_sound(snd_panel_open, 0, false)
        obj_editormanager.expand_open = 1
        active = 1
        if instance_exists(obj_bg_selection)
        {
            with (obj_bg_selection)
                event_user(0)
        }
        if instance_exists(obj_apariencia)
        {
            with (obj_apariencia)
                event_user(0)
        }
        if instance_exists(obj_panel_save_load)
        {
            with (obj_panel_save_load)
                event_user(0)
        }
        if instance_exists(obj_autoavance)
        {
            with (obj_autoavance)
                event_user(0)
        }
        if instance_exists(obj_time)
        {
            with (obj_time)
                event_user(0)
        }
        obj_erase.active = 0
        obj_cursor.image_index = 0
    }
}

