var semisolid, physolid;
switch ready
{
    case 0:
        event_user(4)
        break
    case 1:
        if (!swimming)
        {
            gravity = 0.2
            if (vspeed > 4)
                vspeed = 4
        }
        else
        {
            gravity = 0.02
            if (vspeed > 1)
                vspeed = 1
        }
        event_user(7)
        semisolid = collision_rectangle(bbox_left, (bbox_bottom - 14), bbox_right, ((bbox_bottom - 13) + vspeed), obj_solid, 0, 0)
        physolid = collision_rectangle(bbox_left, (bbox_bottom - 14), bbox_right, ((bbox_bottom - 13) + vspeed), obj_physicssolid, 0, 0)
        if (semisolid && vspeed > 0)
        {
            y = semisolid.y
            depth = (semisolid.depth + 1)
            event_user(6)
        }
        if (physolid && vspeed > 0 && physolid.object_index != obj_muncher && physolid.object_index != obj_muncher_b && physolid.object_index != obj_cannon && physolid.object_index != obj_cannon_red)
        {
            y = physolid.y
            depth = (physolid.depth + 1)
            event_user(6)
        }
        break
}

switch ready2
{
    case 1:
        y -= 0.5
        if (y < (ystart - 2))
        {
            y = (ystart - 2)
            ready2 = 2
            alarm[1] = 90
        }
        break
    case 3:
        y -= 0.5
        if (y < (ystart - 9))
        {
            y = (ystart - 9)
            ready2 = 4
            alarm[2] = 2
        }
        break
    case 5:
        y += 0.5
        if (y >= ystart)
        {
            y = ystart
            ready2 = 0
            alarm[0] = 60
        }
        break
}

if (sprite_index == spr_NSMBU_rocky_throw && image_index >= 16.5 && image_index < 17)
    event_user(2)
if (ready == 2 && (!place_meeting(x, (y + 12), obj_solid)) && (!place_meeting(x, (y + 12), obj_physicssolid)))
    event_user(0)
if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (instance_exists(obj_lava_water) && (bbox_top - 2) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_index = other.image_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_top - 2) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_index = other.image_index
        direct = other.direct
    }
    instance_destroy()
}

