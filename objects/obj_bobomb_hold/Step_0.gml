event_inherited()
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}
else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "mountain" && global.modo_noche == 1)
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}
