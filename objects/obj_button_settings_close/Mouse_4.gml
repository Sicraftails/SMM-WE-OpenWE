if (visible == true)
{
    audio_stop_sound(snd_aceptar)
    audio_play_sound(snd_aceptar, 0, false)
    if instance_exists(obj_settings_panel)
    {
        with (obj_settings_panel)
            instance_destroy()
    }
    if (instance_exists(obj_creator_jugar_editar) && audio_is_paused(obj_creator_jugar_editar.music_editor) && global.keymod == 0)
        audio_resume_sound(obj_creator_jugar_editar.music_editor)
    if instance_exists(obj_gb_button)
    {
        with (obj_gb_button)
            alarm[0] = 15
    }
    if instance_exists(obj_menu_editor_ext)
    {
        with (obj_menu_editor_ext)
            alarm[0] = 15
    }
    if instance_exists(obj_guardabot)
    {
        with (obj_guardabot)
            can_anim = 1
    }
    with (obj_persistent)
        event_user(7)
}

