if (y < -20 && vspeed < 0)
    y = -20
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (held == 0)
{
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
    if instance_exists(obj_mario)
    {
        if (inwall == 0)
        {
            event_user(3)
            event_user(4)
            if (walk == 0)
            {
                if (gravity == 0)
                    var valor = 0.15
                else
                    valor = 0.015
                hspeed = (max(0, (abs(hspeed) - valor)) * sign(hspeed))
                if (abs(hspeed) < valor)
                    hspeed = 0
            }
            else if (walk == 1)
                event_user(6)
            if ((collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_physicssolid, 0, 0) || collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0)) && vspeed < 0)
            {
                hspeed = 0
                inwall = 1
            }
        }
        else
        {
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_onewaygate_left, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
                x++
            while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 1, 0)
                x--
            while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_physicssolid, 1, 0)
                x++
            if ((!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_bullebill_base, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onewaygate_left, 0, 0))) && (!(collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onewaygate_right, 0, 0))))
                inwall = 0
        }
    }
    else if instance_exists(obj_deadmario)
    {
        vspeed = 0
        gravity = 0
    }
    else
    {
        event_user(3)
        event_user(4)
    }
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
        alarm[6] = 1
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
        alarm[6] = 1
    else if (y > room_height && held == 0)
        instance_destroy()
}


