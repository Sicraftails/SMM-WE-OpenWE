if (global.play == 0 && scr_insideview() && global.resource_create == 0 && obj_levelmanager.editor_sonidos == 0)
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 2)
        {
            event_user(2)
            instance_create(x, y, obj_tile_trigger)
        }
    }
}

