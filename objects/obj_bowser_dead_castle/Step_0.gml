if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle" && modo_lava == 0)
{
    if (global.apariencia != 0)
        alarm[2] = 1
    modo_lava = 1
}
if (!instance_exists(obj_deadmario))
{
    if (modo_lava == 1 && gravity != 0)
    {
        gravity = 0.1
        if (vspeed > 1.5)
            vspeed = 1.5
    }
    else if (modo_lava == 0 && gravity != 0)
    {
        gravity = 0.2
        if (vspeed > 3)
            vspeed = 3
    }
}
if (y > (room_height + 248) || (vspeed > 0 && instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1))))
    instance_destroy()

