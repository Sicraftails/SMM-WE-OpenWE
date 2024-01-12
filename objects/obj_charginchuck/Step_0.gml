xx = abs(hspeed)
if (sprite_index == s_charginchuck_walk || sprite_index == s_charginchuck_jump)
{
    if ((hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_physicssolid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_physicssolid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_onewaygate_right, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_onewaygate_left, 0, 0)))
    {
        var block_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_flipblock, 1, 0)
        var block_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_flipblock, 1, 0)
        if (hspeed < 0 && block_right && block_right.ready == 0)
        {
            with (block_right)
                alarm[2] = 1
        }
        else if (hspeed > 0 && block_left && block_left.ready == 0)
        {
            with (block_left)
                alarm[2] = 1
        }
        else if (gravity == 0)
        {
            sprite_index = s_charginchuck_jump
            image_speed = 0
            image_index = 0
            vspeed = (-((4.5 - (2.5 * swimming))))
            y--
        }
    }
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x -= xx
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0))
        x -= xx
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x -= xx
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_onewaygate_right, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_onewaygate_left, 0, 0))
        x -= xx
}
else
{
    if (gravity == 0)
    {
        hspeed = 0
        if (image_speed == 0)
            image_speed = 0.15
    }
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x -= xx
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_physicssolid, 0, 0))
        x -= xx
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x -= xx
    if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_onewaygate_right, 0, 0))
        x += xx
    if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_onewaygate_left, 0, 0))
        x -= xx
}
event_user(4)
event_user(8)
if (wings == 1 && instance_exists(obj_mario))
{
    if (gravity == 0)
        wings_anim += 0.12
    else
        wings_anim += 0.18
}
if (gravity == 0)
{
    if (sprite_index == s_charginchuck_jump)
    {
        sprite_index = s_charginchuck_walk
        if (lookout == 0)
            image_speed = 0.15
        else
            image_speed = 0.3
    }
    if instance_exists(obj_mario)
    {
        if (lookout == 1)
        {
            if ((hspeed < 0 && obj_mario.x > (x + 32)) || (hspeed > 0 && obj_mario.x < (x - 32)))
            {
                sprite_index = s_charginchuck
                image_speed = 0.1
                hspeed = 0
                lookout = -1
                alarm[10] = 32
            }
        }
        else if (lookout == 0)
        {
            if (obj_mario.bbox_bottom > (y - 16))
            {
                if ((hspeed > 0 && obj_mario.x > x) || (hspeed < 0 && obj_mario.x < x))
                {
                    if (wings == 1)
                        hspeed *= 2.5
                    else
                        hspeed *= 1.5
                    lookout = 1
                    alarm[1] = -1
                    image_speed = 0.3
                    if (gravity == 0)
                        sprite_index = s_charginchuck_walk
                }
            }
        }
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
