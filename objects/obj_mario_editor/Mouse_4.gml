if (obj_levelmanager.editor == 1 && global.resource_create == 0 && obj_editormanager.zoom == 0 && (follow == 0) and (!instance_exists(obj_edit_menu)) && (obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1) && (!(collision_rectangle((floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), ((floor((mouse_x / 16)) * 16) + 15), ((floor((mouse_y / 16)) * 16) + 15), obj_parent_layout, 1, 1))) && (!(place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_parent_layout))))
{
    if ((!(place_meeting(x, y, obj_creator_jugar_editar))) && (!(place_meeting(x, y, obj_panel_expand))))
    {
        if (global.cursor == 0)
        {
            if ((instance_exists(obj_parent_resource) && obj_parent_resource.alarm[0] == -1) || (!instance_exists(obj_parent_resource)))
            {
                audio_play_sound(snd_ground_bomb, 0, false)
                xx = (x - mouse_x)
                yy = (y - mouse_y)
                with (obj_creation_preview)
                {
                    xx = other.xx
                    yy = other.yy
                }
                x_start = x
                y_start = y
                global.resource_block = 1
                drag = 1
                obj_cursor.move = 1
                ventana = 1
                global.cursor = 1
                with (obj_cursor)
                    event_user(0)
                if (!instance_exists(obj_effect_touch))
                    instance_create(mouse_x, mouse_y, obj_effect_touch)
                global.resource_move = object_index
                alarm[0] = 1
            }
        }
    }
}
