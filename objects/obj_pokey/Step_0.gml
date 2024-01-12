if (mebelow == noone)
{
    col_pokey = collision_point(x, (bbox_bottom + 8), obj_pokey, 0, 0)
    if (position_meeting(x, (bbox_bottom + 8), obj_pokey) && col_pokey && col_pokey.image_index == 1)
    {
        mebelow = collision_point(x, (bbox_bottom + 8), obj_pokey, 0, 0)
        vspeed = 0
        gravity = 0
        alarm[0] = 10
    }
    else
    {
        event_inherited()
        event_user(6)
        if (hspeed > 0)
            direct = 1
        else
            direct = -1
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
        y = (mebelow.y - 16)
        direct = mebelow.direct
    }
    else
        mebelow = noone
}
if instance_exists(obj_mario)
{
    if (up == 0)
    {
        if (rotacion > -6)
            rotacion -= 0.6
        else
            up = 1
    }
    if (up == 1)
    {
        if (rotacion < 6)
            rotacion += 0.6
        else
            up = 0
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle" && modo_lava == 0)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1 && modo_lava == 0)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && y <= (obj_lava_water.y - 12) && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
    y = (obj_lava_water.y - 20)
if (modo_lava == 1)
{
    hspeed = 0
    gravity = 0.02
    if (vspeed > 0.03)
        vspeed = 0.03
}

