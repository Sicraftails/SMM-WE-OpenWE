if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
event_user(2)
event_user(3)
event_user(4)
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1
if (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12) && object_index != obj_grinder && object_index != obj_thwomp && object_index != obj_podoboo && object_index != obj_cheepcheep && object_index != obj_boo && object_index != obj_bobomb && object_index != obj_bobomb_ready && object_index != obj_pokey)
{
    if (global.bg_level == "castle")
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
    else if (global.bg_level == "forest" && global.modo_noche == 1)
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
    else if (global.bg_level == "mountain" && global.modo_noche == 1)
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
}
