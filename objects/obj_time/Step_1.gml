if (image_speed < 0 && image_index <= 0)
{
    if ((!instance_exists(obj_panel_save_load)) && (!instance_exists(obj_bg_selection)) && (!instance_exists(obj_autoavance)) && (!instance_exists(obj_apariencia)) && (!instance_exists(obj_condiciones)))
        obj_editormanager.expand_open = 0
    instance_destroy()
}

