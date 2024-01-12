if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1)
    global.resource_create = 0
if (move_view == 1)
{
    move_view = 0
    speed = 0
    if (!instance_exists(obj_ventana_mario))
        obj_editormanager.expand_open = 0
}
if (global.resource_move != obj_lighting && instance_exists(global.resource_move))
{
    with (global.resource_move)
    {
        drag = 0
        obj_cursor.move = 0
        global.resource_block = 0
        if (global.cursor != 2)
        {
            global.cursor = 0
            with (obj_cursor)
                event_user(0)
        }
    }
    global.resource_move = 0
}
if (instance_exists(obj_water_move) && obj_water_move.drag == 1)
{
    with (obj_water_move)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
    }
}
if (instance_exists(obj_water_move_limit) && obj_water_move_limit.drag == 1)
{
    with (obj_water_move_limit)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
    }
}