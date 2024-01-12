if instance_exists(obj_parent_resource)
{
    if (instance_exists(obj_arrow_lock) && obj_arrow_lock.visible == true)
    {
        with (obj_load_image)
            instance_destroy()
        global.instance_deactivate = 1
        scr_toast(1, scr_language(91))
    }
    else
        event_user(0)
}
else
{
    with (obj_load_image)
        instance_destroy()
    global.instance_deactivate = 1
    scr_toast(1, scr_language(92))
}


