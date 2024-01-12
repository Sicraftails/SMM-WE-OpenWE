event_inherited()
exception = 1
grid_selected = spr_grid_selected_16x32
door_x = (x + 16)
door_y = y
if instance_exists(obj_editormanager)
{
    if (obj_editormanager.door_p_symbol_1 == 0)
    {
        symbol = 0
        obj_editormanager.door_p_symbol_1 = 1
    }
    else if (obj_editormanager.door_p_symbol_2 == 0)
    {
        symbol = 1
        obj_editormanager.door_p_symbol_2 = 1
    }
    else if (obj_editormanager.door_p_symbol_3 == 0)
    {
        symbol = 2
        obj_editormanager.door_p_symbol_3 = 1
    }
    else if (obj_editormanager.door_p_symbol_4 == 0)
    {
        symbol = 3
        obj_editormanager.door_p_symbol_4 = 1
    }
    else
        symbol = 0
}
door_exit = 0
alarm[1] = 1

