if (y < (ystart + 42) && ready == 1)
{
    ready = 0
    gravity = 0.2
}
if (y < (ystart + 16) && ready == 0 && vspeed < 0 && rot == 0)
    rot = 1
if (rot == 1)
{
    if (rotacion >= 180)
    {
        rotacion = 180
        rot = 2
    }
    else
        rotacion += 10
}
if (bbox_top > room_height)
{
    if (!ready)
    {
        ready = 1
        alarm[0] = 10
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1) or (global.bg_level == "mountain" && global.modo_noche == 1)))
{
    if ((!ready) && vspeed > 0)
    {
        ready = 1
        alarm[0] = 10
        if (global.apariencia != 0)
        {
            if (global.bg_level == "forest")
                instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
            else
                instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        }
    }
}
direct = 1
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y >= obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
{
    if (vspeed > 1)
        vspeed = 1
}
else if (vspeed > 6)
    vspeed = 6
