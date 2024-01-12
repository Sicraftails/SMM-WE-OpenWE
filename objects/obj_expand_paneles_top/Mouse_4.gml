if (obj_levelmanager.editor == 1 && (obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1) && obj_creator_jugar_editar.image_speed == 0 && instance_exists(obj_editormanager) && obj_editormanager.zoom == 0 && obj_erase.active == 0 && obj_cursor.move == 0)
{
    audio_play_sound(snd_close_palette2, 0, false)
    if (obj_cursor.cont_panel_top == 0)
        obj_cursor.cont_panel_top = 1
    else if (obj_cursor.cont_panel_top == 3)
        obj_cursor.cont_panel_top = 2
}

