if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1 && instance_exists(obj_editormanager) && obj_editormanager.zoom == 0 && os_type != os_android && (obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1))
{
    if (global.cursor == 0 && global.editor_activity == 1)
    {
        fast_clean = 1
        global.cursor = 2
        event_user(0)
        with (obj_erase)
            event_user(0)
    }
}
else
    global.cursor = 0
if (instance_exists(obj_ventana) && (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_ventana, 1, 1))))
{
    with (obj_ventana)
        can_anim2 = 1
}
