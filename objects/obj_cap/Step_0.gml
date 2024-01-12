if (wings == 0 && ready == 1)
{
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship"))
    {
        gravity = 0
        vspeed = -0.2
        if (vspeed < -0.2)
            vspeed = -0.2
    }
    else
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
    if (x > xprevprev)
        image_index = 2
    else
        image_index = 1
    xprevprev = xprevious
}
if ((instance_exists(obj_lava_water) && y > obj_lava_water.y && global.bg_level == "castle") || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 1))
{
    with (instance_create(x, y, obj_smoke))
        depth = -10
    instance_destroy()
}
if (paracaidas == 1)
{
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
if (wings == 1 && paracaidas == 0)
{
    wings_anim += 0.12
    if (y > (ystart + 12))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 12))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
}
if (bbox_top > room_height && obj_levelmanager.editor == 0)
    instance_destroy()

