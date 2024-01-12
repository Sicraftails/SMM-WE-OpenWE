if (door_exit != obj_lighting && instance_exists(door_exit))
{
    with (door_exit)
        instance_destroy()
}
if instance_exists(obj_editormanager)
{
    if (symbol == 0)
        obj_editormanager.door_symbol_1 = 0
    else if (symbol == 1)
        obj_editormanager.door_symbol_2 = 0
    else if (symbol == 2)
        obj_editormanager.door_symbol_3 = 0
    else if (symbol == 3)
        obj_editormanager.door_symbol_4 = 0
}

