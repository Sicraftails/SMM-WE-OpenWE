if (vspeed >= 0)
{
    var semisolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    var physolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 0, 0)
    if (semisolid && bbox_bottom < (semisolid.yprevious + 5))
        y = (semisolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (physolid && bbox_bottom < (physolid.yprevious + 5))
        y = (physolid.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    if (vspeed > 4)
        vspeed = 4
}
if ((collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))) || (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0)))))
{
    gravity = 0
    if (hspeed == 0 && spike_alone == 0)
        hspeed = (1 * sign(direct_spike))
    if (spike_alone == 1 && ready == 1)
    {
        if (instance_exists(obj_mario) && obj_mario.x > x)
            spike_alone_a = 1
        else
            spike_alone_a = 2
        spike_alone = 0
    }
    if (vspeed > 0.25)
        vspeed = ((-vspeed) / 2)
    else if (vspeed > 0 && vspeed <= 0.5)
    {
        vspeed = 0
        var col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            with (col_one_top)
            {
                rot = 1
                event_user(0)
            }
        }
        if (spike_alone == 1 && ready == 1)
        {
            if (instance_exists(obj_mario) && obj_mario.x > x)
                spike_alone_a = 1
            else
                spike_alone_a = 2
            spike_alone = 0
        }
    }
}
else if (modo_lava == 1)
{
    hspeed = 0
    gravity = 0.02
    if (vspeed > 0.1)
        vspeed = 0.1
}
else if (paracaidas == 1)
{
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
else if (!swimming)
{
    gravity = 0.2
    if (vspeed > 4)
        vspeed = 4
}
else if (swimming == 1)
{
    gravity = 0.03
    if (vspeed > 0.5)
        vspeed = 0.5
}
if (vspeed < 0)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!(place_meeting(x, y, obj_solid))))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_physicssolid, 1, 0) && (!(place_meeting(x, y, obj_physicssolid))))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!(place_meeting(x, y, obj_solidphy))))
            y++
        var col_one_bottom = collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)
        if col_one_bottom
        {
            with (col_one_bottom)
            {
                rot = 1
                event_user(0)
            }
        }
        var block = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, (bbox_top - 1), obj_blockparent, 0, 0)
        if (block && block.ready == 0)
        {
            with (block)
                event_user(2)
        }
        vspeed = 0
    }
}
event_user(14)
