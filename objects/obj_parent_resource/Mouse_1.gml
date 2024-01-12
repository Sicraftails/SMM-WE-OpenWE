if (instance_exists(obj_levelmanager) && os_type != os_android && scr_insideview() && obj_editormanager.expand_open == 0 && obj_levelmanager.editor_sonidos == 0 && instance_exists(obj_editormanager) && obj_editormanager.zoom == 0)
{
    if (obj_levelmanager.editor == 1)
    {
        if (global.cursor == 2)
            event_user(2)
    }
}

