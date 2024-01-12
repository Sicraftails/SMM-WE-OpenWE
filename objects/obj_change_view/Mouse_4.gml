if instance_exists(obj_editormanager)
{
    with (obj_editormanager)
        zoom = 3
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
    instance_destroy()
}

