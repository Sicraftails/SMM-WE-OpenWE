if instance_exists(obj_window_button)
{
    with (obj_window_button)
        instance_destroy()
}
if instance_exists(obj_button_wings)
{
    with (obj_button_wings)
        instance_destroy()
}
with (obj_editormanager)
    alarm[0] = 10

