if ((instance_exists(obj_lava_water) && y <= (obj_lava_water.y + 8) && global.bg_level == "forest" && global.modo_noche == 0) || (global.bg_level != "underwater" && global.bg_level != "forest") || place_meeting(x, y, obj_solid))
    event_user(0)

