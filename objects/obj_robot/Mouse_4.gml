if (obj_levelmanager.editor == 1 && obj_editormanager.expand_open != 2 && (!instance_exists(obj_apariencia)) && (!instance_exists(obj_bg_selection)) && (!instance_exists(obj_autoavance)) && (!instance_exists(obj_time)) && (!instance_exists(obj_condiciones)) && global.cursor == 0 && obj_creator_jugar_editar.image_speed == 0 && canpress == 0)
{
    if (instance_exists(obj_panel_save_load) && obj_panel_save_load.image_speed == 0)
    {
        audio_play_sound(snd_close_guardabot, 0, false)
        with (obj_panel_save_load)
            event_user(0)
    }
    else if (!instance_exists(obj_panel_save_load))
    {
        audio_play_sound(snd_open_guardabot, 0, false)
        instance_create((camera_get_view_x(view_get_camera(0)) + 198), camera_get_view_y(view_get_camera(0)), obj_panel_save_load)
        obj_editormanager.expand_open = 1
        active = 1
        if instance_exists(obj_time)
        {
            with (obj_time)
                event_user(0)
        }
        if instance_exists(obj_apariencia)
        {
            with (obj_apariencia)
                event_user(0)
        }
        if instance_exists(obj_bg_selection)
        {
            with (obj_bg_selection)
                event_user(0)
        }
        if instance_exists(obj_condiciones)
        {
            with (obj_condiciones)
                event_user(0)
        }
        obj_erase.active = 0
        obj_cursor.image_index = 0
    }
}

