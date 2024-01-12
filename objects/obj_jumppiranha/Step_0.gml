switch inup
{
    case 1:
        if (cankill == 1 && (!place_meeting(x, (y - 12), obj_solid)) && (!place_meeting(x, (y - 12), obj_physicssolid)))
            event_user(0)
        break
    case 2:
        if (cankill == 1 && (!place_meeting((x - 16), y, obj_solid)) && (!place_meeting((x - 16), y, obj_physicssolid)))
            event_user(0)
        break
    case 3:
        if (cankill == 1 && (!place_meeting((x + 16), y, obj_solid)) && (!place_meeting((x + 16), y, obj_physicssolid)))
            event_user(0)
        break
}

if (paracaidas == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.15)) * sign(hspeed))
    if (abs(hspeed) < 0.15)
        hspeed = 0
}
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (instance_exists(obj_lava_water) && (y + 8) >= obj_lava_water.y && global.bg_level == "castle")
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
if (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && global.bg_level == "forest" && global.modo_noche == 1)
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
if (inup == 0 && (jump_plant < 2 || jump_plant == 10))
    event_user(4)
if (wings == 1)
{
    if (global.apariencia == 3)
        wings_anim += 1
    else
        wings_anim += 0.12
    if (jump_plant == 1 && vspeed > 0)
    {
        jump_plant = 2
        b_start = y
        gravity = 0
    }
    if (jump_plant > 1 && jump_plant < 8)
    {
        if (y > (b_start + 24))
        {
            if (vspeed < -1)
                vspeed = -1
            else
                vspeed -= 0.03
        }
        else if (y < (b_start - 24))
        {
            if (vspeed > 1)
                vspeed = 1
            else
                vspeed += 0.03
        }
        jump_plant += 0.04
        if (jump_plant > 7)
        {
            jump_plant = 10
            gravity = 0
        }
    }
    if (jump_plant == 10 && gravity == 0 && vspeed == 0)
    {
        alarm[1] = 60
        jump_plant = 0
        timer = 0
    }
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
    if (gravity == 0)
    {
        instance_create(x, y, obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
    }
}

