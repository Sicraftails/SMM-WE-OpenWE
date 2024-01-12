if (wings == 0 && paracaidas == 0)
{
    vspeed = 0
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        path_start(pth_leafpath, -1.5, path_action_continue, 0)
    else
        path_start(pth_leafpath, 1.5, path_action_continue, 0)
    ready = 1
}

