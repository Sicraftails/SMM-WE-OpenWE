event_user(7)
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (paracaidas == 0)
{
    if (throughsolid == 0)
    {
        if (hspeed <= 0 && x <= (xstart - 16))
            hspeed = (0.4 - (0.2 * swimming))
        else if (hspeed >= 0 && x >= (xstart + 16))
            hspeed = (-((0.4 - (0.2 * swimming))))
    }
    else if (throughsolid > 0)
        hspeed = 0
    if (vspeed > 0 && throughsolid == 1)
        throughsolid = 2
}
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
{
    if (hspeed > 0.3)
    {
        hspeed -= 0.08
        if (hspeed <= 0.3)
            hspeed = 0.3
    }
    else if (hspeed < -0.3)
    {
        hspeed += 0.08
        if (hspeed >= -0.3)
            hspeed = -0.3
    }
}
else if (hspeed > 0.4)
{
    hspeed -= 0.08
    if (hspeed <= 0.4)
        hspeed = 0.4
}
else if (hspeed < -0.4)
{
    hspeed += 0.08
    if (hspeed >= -0.4)
        hspeed = -0.4
}
if (throughsolid == 0)
{
    event_user(3)
    event_user(4)
}
else
{
    if (swimming == 1)
    {
        gravity = 0.15
        if (vspeed > 1)
        {
            vspeed = 1
            gravity = 0
        }
    }
    else
    {
        gravity = 0.25
        if (vspeed > 4)
        {
            vspeed = 4
            gravity = 0
        }
    }
    if (throughsolid == 2 && vspeed > 0)
    {
        var ss = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, ((bbox_bottom + 1) + vspeed), obj_solidtop, 0, 0)
        var ps = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, ((bbox_bottom + 1) + vspeed), obj_physicssolid, 0, 0)
        if (ss && ((salto == "small" && y > start) || salto == "big") && (!(place_meeting((ss.x + 8), (ss.y - 16), obj_solid))) && ((!(place_meeting((ss.x + 8), (ss.y - 16), obj_modelbgo))) || place_meeting((ss.x + 8), (ss.y - 16), obj_modelbgo_dec)) && (!(place_meeting((ss.x + 8), (ss.y - 16), obj_physicssolid))))
        {
            throughsolid = 0
            vspeed = 0
            y = (ss.y - 16)
            if (global.apariencia < 3)
                hspeed = prev_hspeed
        }
        else if (ps && ((salto == "small" && y > start) || salto == "big") && (!(place_meeting((ps.x + 8), (ps.y - 16), obj_solid))) && ((!(place_meeting((ps.x + 8), (ps.y - 16), obj_modelbgo))) || place_meeting((ps.x + 8), (ps.y - 16), obj_modelbgo_dec)) && (!(place_meeting((ps.x + 8), (ps.y - 16), obj_physicssolid))))
        {
            throughsolid = 0
            vspeed = 0
            y = (ps.y - 16)
            if (global.apariencia < 3)
                hspeed = prev_hspeed
        }
    }
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (wings == 1 && instance_exists(obj_mario))
{
    if (global.apariencia == 3)
    {
        if (gravity > 0)
            wings_anim += 1.5
        else
            wings_anim += 1
    }
    else if (gravity > 0)
        wings_anim += 0.2
    else
        wings_anim += 0.12
}
if (paracaidas == 1)
{
    direct = -1
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
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
        alarm[10] = 10
    }
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle")
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


