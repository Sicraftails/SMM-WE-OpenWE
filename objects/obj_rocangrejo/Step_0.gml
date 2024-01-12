if (trow == 1)
{
    if (global.apariencia == 3)
    {
        if (image_index >= 20 && image_index < 20.5)
            alarm[2] = 1
    }
    else if (image_index >= 2.1 && image_index < 2.25)
        alarm[2] = 1
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
    if (abs(hspeed) < 0.1)
        hspeed = 0
}
if (vspeed > 0 && jumping == 1)
{
    hspeed = (max(0, (abs(hspeed) - 0.4)) * sign(hspeed))
    if (abs(hspeed) < 0.4)
        hspeed = 0
}
if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
event_user(3)
event_user(4)
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "mountain" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}

