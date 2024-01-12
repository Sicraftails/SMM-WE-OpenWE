if (instance_exists(obj_levelmanager) && obj_levelmanager.editor == 1 && drag == 0)
{
    event_user(2)
    instance_create(x, y, obj_tile_trigger)
}

