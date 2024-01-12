if (obj_levelmanager.editor == 1 && global.resource_create == 0 && object_index != obj_resource_empty && obj_editormanager.expand_open == 0 && instance_exists(obj_cursor) && obj_cursor.dont_move == 0)
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 0)
        {
            if ((instance_exists(obj_parent_resource) && obj_parent_resource.alarm[0] == -1) || (!instance_exists(obj_parent_resource)))
            {
                if (mouse_x > x && mouse_x < (x + 16) && mouse_y > y && mouse_y < (y + 16))
                {
                    poder_girar = 1
                    draw_p = 1
                    obj_cursor.move_tuberia = 1
                    if instance_exists(obj_card_item)
                    {
                        with (obj_card_item)
                            active = 0
                        global.select_resource = obj_resource_empty
                    }
                }
            }
        }
    }
}

