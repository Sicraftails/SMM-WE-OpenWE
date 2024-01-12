if (instance_exists(obj_levelmanager) && os_type != os_android && obj_levelmanager.editor_sonidos == 1 && obj_editormanager.expand_open == 0)
{
    if (obj_levelmanager.editor == 1)
    {
        if (global.cursor == 2 && global.editor_activity == 1)
            event_user(2)
    }
}
