if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && global.bg_level == "forest" && global.modo_noche == 0 && y >= obj_lava_water.y))
{
    with (other.id)
        event_user(0)
}
else if (lava == 1)
{
    with (other.id)
        event_user(0)
}
else
    event_inherited()

