if (global.resource_create == 0 && scr_insideview() && instance_exists(obj_levelmanager) && obj_levelmanager.editor_sonidos == 0 && instance_exists(obj_editormanager) && obj_editormanager.zoom == 0)
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 2)
            event_user(2)
    }
}

