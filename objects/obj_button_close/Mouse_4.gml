if (obj_levelmanager.editor == 1)
{
    audio_play_sound(snd_close_palette2, 0, false)
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
    with (obj_panel_expand)
        instance_destroy()
    with (obj_editormanager)
        alarm[0] = 15
}

