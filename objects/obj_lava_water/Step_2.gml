if (obj_levelmanager.editor == 0)
{
    if (bajar == 1 && instance_exists(obj_ground3))
    {
        if ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")
            vspeed = 0
        else if (y < (obj_ground3.y + 12))
            vspeed = 1
        else if (b_bajar == 0)
        {
            vspeed = 0
            b_bajar = 1
        }
    }
    else if (pos_y != pos_y_limit)
    {
        if (not_move == 1)
        {
            vspeed = 0
            image_speed = 0
        }
        else if (pos_y_limit < (y - 12) && vspeed == 0 && up_down == 0)
        {
            vspeed = (-global.water_speed)
            up_down = 1
        }
        else if (pos_y_limit >= (y - 12) && vspeed < 0 && up_down == 1)
        {
            vspeed = 0
            alarm[0] = 120
            up_down = 2
        }
        else if (pos_y_limit >= (y - 12) && vspeed == 0 && up_down == 3)
        {
            vspeed = global.water_speed
            up_down = 4
        }
        else if (y >= pos_y && vspeed > 0 && up_down == 4)
        {
            vspeed = 0
            alarm[0] = 120
            up_down = 5
        }
    }
}
else if (obj_levelmanager.editor == 1 && (!instance_exists(obj_water_move)))
{
    y = (pos_y + 12)
    up_down = 0
    vspeed = 0
}

