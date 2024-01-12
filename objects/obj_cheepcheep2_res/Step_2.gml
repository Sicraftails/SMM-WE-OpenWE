if (obj_levelmanager.editor == 1)
{
    image_index = global.apariencia
    if (instance_exists(obj_lava_water) && y >= (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach"))
        modo_water = 1
    else
        modo_water = 0
}

