if (abs(hspeed) < 1)
    xx = 1
else
    xx = abs(hspeed)
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (stomp == -1)
{
    vspeed = 0
    gravity = 0
}
else
{
    event_user(3)
    event_user(4)
    event_user(6)
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    instance_destroy()
}
else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
    instance_destroy()
}
else if ((bbox_top - 16) > room_height)
{
    if (key == 1)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
    }
}

