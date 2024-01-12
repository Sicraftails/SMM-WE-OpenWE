if (obj_levelmanager.editor == 1 && obj_cursor.move == 0)
{
    audio_play_sound(snd_panel_close, 0, false)
    obj_levelmanager.editor_water = 0
    with (obj_cursor)
    {
        if (cont_panel_right == 3)
            cont_panel_right = 2
        if (cont_panel_left == 3)
            cont_panel_left = 2
        if (cont_panel_top == 3)
            cont_panel_top = 2
        cont_panel_creator = 2
    }
    obj_expand.visible = true
    if (obj_persistent.modo_android == 1)
        obj_creator_jugar_editar.visible = true
    with (obj_editormanager)
        alarm[0] = 15
    if instance_exists(obj_water_level_control)
    {
        with (obj_water_level_control)
            instance_destroy()
    }
}

