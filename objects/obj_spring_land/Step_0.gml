if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (mebelow == noone)
{
    col_pokey = collision_point(x, (bbox_bottom + 8), obj_spring_land, 0, 0)
    if position_meeting(x, (bbox_bottom + 8), obj_spring_land)
    {
        mebelow = collision_point(x, (bbox_bottom + 8), obj_spring_land, 0, 0)
        vspeed = 0
        gravity = 0
        alarm[0] = 10
    }
    else
    {
        if (gravity == 0)
        {
            hspeed = (max(0, (abs(hspeed) - 0.15)) * sign(hspeed))
            if (abs(hspeed) < 0.15)
                hspeed = 0
        }
        event_inherited()
        offset = 0
        offsetnext = 0
        alarm[0] = -1
    }
}
else
{
    instance_activate_object(mebelow)
    if instance_exists(mebelow)
    {
        x = mebelow.x
        y = (mebelow.y - sprite_height)
    }
    else
        mebelow = noone
}

