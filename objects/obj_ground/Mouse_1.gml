if (obj_editormanager.expand_open == 0 && obj_levelmanager.editor_sonidos == 0 && global.cursor == 2 && scr_insideview() && global.editor_activity == 1)
{
    event_user(2)
    instance_create(x, y, obj_tile_trigger)
}

