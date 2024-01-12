if (hspeed == 0)
{
    if (global.bg_level == "underwater" || ((global.bg_level == "airship" || global.bg_level == "sky") && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && global.bg_level == "forest" && global.modo_noche == 0))
        hspeed = (0.8 * direct)
    else
        hspeed = (1.3 * direct)
}
