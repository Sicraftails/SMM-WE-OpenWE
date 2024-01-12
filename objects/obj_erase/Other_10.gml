if (active == 0 && obj_creator_jugar_editar.image_speed == 0 && (obj_editormanager.expand_open == 0 || obj_levelmanager.editor_sonidos == 1))
{
    if (obj_cursor.fast_clean == 0)
    {
        with (obj_card_item)
            active = 0
        global.select_resource = obj_resource_empty
    }
    global.cursor = 2
    with (obj_cursor)
        event_user(0)
    alarm[1] = 20
    active = 1
}
else if (active == 1)
{
    active = 0
    can_clean = 0
    image_index = 0
    global.cursor = 0
    with (obj_cursor)
        event_user(0)
}

