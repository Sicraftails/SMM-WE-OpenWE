if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1)
{
    if (global.cursor == 2 && global.editor_activity == 1)
    {
        with (obj_erase)
            event_user(0)
        fast_clean = 0
        global.cursor = 0
        event_user(0)
    }
}
else
    global.cursor = 0
