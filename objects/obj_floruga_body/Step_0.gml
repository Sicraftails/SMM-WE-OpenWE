if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= obj_lava_water.y) || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
    swimming = 1
else
    swimming = 0
if instance_exists(prevsegment)
{
    if (direct == 1 && x > prevsegment.x)
        direct = -1
    else if (direct == -1 && x < prevsegment.x)
        direct = 1
}
event_user(4)
