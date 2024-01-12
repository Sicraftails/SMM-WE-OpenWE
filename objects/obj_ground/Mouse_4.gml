if (global.resource_create == 0 && global.editor_activity == 1 && scr_insideview() && obj_levelmanager.editor_sonidos == 0)
{
    if (global.cursor == 2)
    {
        instance_create(x, y, obj_tile_trigger)
        event_user(2)
    }
}

