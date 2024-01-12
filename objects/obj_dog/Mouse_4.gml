if (instance_exists(obj_editormanager) && obj_editormanager.zoom == 0 && obj_levelmanager.editor_water == 0 && obj_levelmanager.editor == 1 && obj_editormanager.expand_open == 0 && (!instance_exists(obj_panelparent)) && (!instance_exists(obj_ventana)) && room_width >= 768 && (!place_meeting(mouse_x, mouse_y, obj_creator_jugar_editar)))
{
    global.play_lock = 1
    obj_editormanager.zoom = 1
    with (obj_cursor)
    {
        anim_right = 0
        anim_left = 0
        anim_top = 0
        cont_panel_right = 0
        cont_panel_left = 0
        cont_panel_top = 0
        event_user(3)
    }
}

