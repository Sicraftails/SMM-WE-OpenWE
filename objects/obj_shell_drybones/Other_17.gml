if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 0))
    vspeed = -2.125
else
    vspeed = -4.125
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    hspeed = -0.5
