if ((!instance_exists(obj_settings_panel)) && instance_exists(obj_cursor) && obj_cursor.active_menu == 0)
{
    audio_play_sound(snd_cerrar_menu, 0, false)
    with (obj_edit_menu)
        instance_destroy()
    if instance_exists(obj_editormanager)
        obj_editormanager.expand_open = 0
    if instance_exists(obj_menu_editor_ext)
    {
        with (obj_menu_editor_ext)
            alarm[0] = 15
    }
    if instance_exists(obj_guardabot)
    {
       audio_resume_sound(snd_guardabot)
        with (obj_guardabot)
            can_anim = 1
    }


}