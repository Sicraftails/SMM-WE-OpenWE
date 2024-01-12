 if (instance_exists(obj_cursor) && obj_cursor.active_menu == 0 and !instance_exists(obj_settings_panel))
{
    if (image_index == 2)
    {
        audio_stop_sound(snd_niveles_mundiales)
        audio_play_sound(snd_niveles_mundiales, 0, false)
        instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_settings_panel)
        if instance_exists(obj_edit_menu)
        {
            with (obj_edit_menu)
                instance_destroy()
        }
    }
    else if (image_index == 3)
    {
        audio_play_sound(snd_inventory, 0, false)
        scr_init_globals()
        if instance_exists(obj_creator_jugar_editar)
            audio_stop_sound(obj_creator_jugar_editar.music_editor)
        room_goto(rm_title)
    }
    else if (image_index == 1)
    {
        if (global.my1 == 0 || global.my2 == 0 || global.my3 == -1 || global.my4 == -1 || global.my5 == 0 || global.my6 == -1)
            exit
        else
        {
            global.my2 = 0
            global.my3 = -1
            global.my4 = -1
            global.my5 = 0
            global.my6 = -1
            room_goto(rm_title)
        }
    }
}

