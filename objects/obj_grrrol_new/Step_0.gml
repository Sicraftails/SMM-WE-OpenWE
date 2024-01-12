if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
event_user(3)
event_user(4)
event_user(2)
if (global.modo_noche == 1)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        hspeed -= 0.0224
        if (swimming == 1)
        {
            if (hspeed < -1)
                hspeed = -1
        }
        else if (hspeed < -1.2)
            hspeed = -1.2
    }
    else
    {
        hspeed += 0.0324
        if (swimming == 1)
        {
            if (hspeed > 1)
                hspeed = 1
        }
        else if (hspeed > 1.2)
            hspeed = 1.2
    }
}
angle -= (3.5 * sign(hspeed))
if (swimming == 1)
{
    if (hspeed > 1)
    {
        hspeed -= 0.08
        if (hspeed <= 1)
            hspeed = 1
    }
    else if (hspeed < -1)
    {
        hspeed += 0.08
        if (hspeed >= -1)
            hspeed = -1
    }
}
else if (hspeed > 2)
{
    hspeed -= 0.08
    if (hspeed <= 1.2)
        hspeed = 1.2
}
else if (hspeed < -1.2)
{
    hspeed += 0.08
    if (hspeed >= -1.2)
        hspeed = -1.2
}
if ((modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle") || (modo_lava == 0 && instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1))
{
    modo_lava = 1
    if (global.apariencia != 0)
    {
        if (global.bg_level == "castle")
            instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        else
            instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    }
}
else if ((bbox_top - 16) > room_height)
    instance_destroy()
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) <= (obj_lava_water.y - 12) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
    y = (obj_lava_water.y - 20)

