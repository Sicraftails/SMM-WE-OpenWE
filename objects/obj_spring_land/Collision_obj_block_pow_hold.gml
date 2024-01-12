if (other.held == 0)
{
    if (collision_rectangle(bbox_left, bbox_top, (bbox_right - 4), bbox_top, obj_block_pow_hold, 0, 0) && (other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
    {
        other.explode = 0
        if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 0))
        {
            other.vspeed = -1.5
            other.hspeed = -2
        }
        else
        {
            other.hspeed = -3
            other.vspeed = -2.9
        }
        event_user(1)
    }
    else if (collision_rectangle((bbox_left - 4), bbox_top, bbox_right, bbox_top, obj_physicsparent, 0, 0) && (other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        other.explode = 0
        if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 0))
        {
            other.vspeed = -1.5
            other.hspeed = 2
        }
        else
        {
            other.vspeed = -2.9
            other.hspeed = 3
        }
        event_user(1)
    }
}

