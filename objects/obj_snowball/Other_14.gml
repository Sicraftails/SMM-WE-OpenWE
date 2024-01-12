if (vspeed >= 0)
{
    var semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    var physolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 0, 0)
    if (physolid && bbox_bottom < (physolid.yprevious + 5))
        y = (physolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (semisolid && bbox_bottom < (semisolid.yprevious + 5))
        y = (semisolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (vspeed > 3)
        vspeed = 3
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0)))))
{
    gravity = 0
    if (vspeed > 0)
        vspeed = 0
}
else
{
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && (bbox_bottom - 8) < (obj_lava_water.y - 10) && (global.bg_level == "forest" || global.bg_level == "beach"))
        instance_create(x, (obj_lava_water.y - 24), obj_splash_agua)
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
    {
        instance_create(x, (obj_lava_water.y - 24), obj_splash_lava)
        event_user(0)
    }
    else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "mountain" and global.modo_noche == 1)
    {
        instance_create(x, (obj_lava_water.y - 24), obj_splash_lava)
        event_user(0)
    }
    if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
    {
        instance_create(x, (obj_lava_water.y - 24), obj_splash_posion)
        event_user(0)
    }
    else
    {
        gravity = 0.2
        if (vspeed > 3)
            vspeed = 3
    }
}
if (vspeed < 0 && ((collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_hurtsolid2, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solidphy, 1, 0)))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
}
if ((bbox_top - 16) > room_height)
    instance_destroy()
