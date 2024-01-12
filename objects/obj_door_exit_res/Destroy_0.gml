if (id_return != obj_lighting && instance_exists(id_return))
{
    with (id_return)
        instance_destroy()
}
if (update == 1)
{
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
}

