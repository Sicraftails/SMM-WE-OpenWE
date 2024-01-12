var check, check_2;
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y >= (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
if (hspeed > 0 && hspeed < spd)
{
    hspeed += 0.05
    if (hspeed >= spd)
        hspeed = spd
}
else if (hspeed < 0 && hspeed > (-spd))
{
    hspeed -= 0.05
    if (hspeed <= (-spd))
        hspeed = (-spd)
}
if (fall == 0 && vspeed == 0 && gravity == 0 && instance_exists(obj_mario))
{
    if ((!collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_solidtop, 1, 0)) && (!collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_physicssolid, 1, 0)))
    {
        move_snap(4, 2)
        y += 4
        fall = 1
    }
}
else if (fall == 1 && gravity == 0)
    fall = 0
prevhspeed = hspeed
prevvspeed = vspeed
event_user(3)
if (!instance_exists(obj_deadmario))
    event_user(4)
else
{
    gravity = 0
    speed = 0
}
if (hspeed != prevhspeed)
{
    if (!outside_view())
    {
        audio_stop_sound(scr_snd_bump())
        audio_play_sound(scr_snd_bump(), 0, false)
    }
    hardness = 100
    alarm[0] = 2
    instance_create(x, y, obj_blockbumper)
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_index = other.image_index
        image_speed = 0
        direct = 1
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
        image_index = other.image_index
        image_speed = 0
        direct = 1
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
        image_index = other.image_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if (mytopid == obj_lighting)
    exit
if (mytopid != obj_lighting && mytopid != obj_rainmaker && instance_exists(mytopid) && instance_exists(obj_mario))
{
    mytopid.x = x
    mytopid.y = y
    check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
    check_2 = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_physicssolid, 0, 0)
    if ((check && check != mytopid) || check_2)
        exit
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && obj_mario.y < (y - 28) && obj_mario.state < 2)
    {
        if (vspeed == 0)
            obj_mario.y = ceil((bbox_top - 32))
        else
            obj_mario.y = ceil((bbox_top - (32 - vspeed)))
        if ((hspeed > 0 && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || (hspeed < 0 && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || (hspeed > 0 && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_physicssolid, 0, 0))) || (hspeed < 0 && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_physicssolid, 0, 0))) || (hspeed > 0 && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (hspeed < 0 && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (hspeed > 0 && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 0, 0))) || (hspeed < 0 && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 0, 0))))
            obj_mario.x += hspeed
    }
}