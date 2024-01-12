event_inherited()
if (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
    {
        with (instance_create(x, (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -12
        }
    }
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = 1
        image_speed = 0.15
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12) && global.bg_level == "mountain" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
    {
        with (instance_create(x, (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava
            depth = -12
        }
    }
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = 1
        image_speed = 0.15
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (y + 8) >= obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
    {
        with (instance_create((x + 8), (y - 8), obj_smoke))
        {
            if (global.apariencia == 1)
                sprite_index = spr_SMB3_splash_lava_purple
            else if (global.apariencia == 2)
                sprite_index = spr_splash_lava_purple
            depth = -12
        }
    }
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = 1
        image_speed = 0.15
    }
    instance_destroy()
}
if (gravity == 0 && abs(hspeed) > 1)
    hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
