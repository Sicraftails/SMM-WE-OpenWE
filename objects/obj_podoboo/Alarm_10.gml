if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y >= obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 0))
    gravity = 0.1
else
    gravity = 0.2
