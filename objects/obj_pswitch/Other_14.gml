var semisolid, col_one_top, solidphy, col_one_bottom, block;
if (inup == 0 && wings = 0)
{
    if (vspeed >= 0)
    {
        semisolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
        if (semisolid && bbox_bottom < (semisolid.yprevious + 5))
            y = (semisolid.bbox_top - (sprite_height - sprite_get_yoffset(sprite_index)))
        if (vspeed > 4)
            vspeed = 4
    }
    if (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))
    {
        gravity = 0
        if (vspeed > 0)
        {
            if (bouncy == 1)
            {
                if (vspeed > 0.5)
                    vspeed = ((-vspeed) / 2)
                else
                {
                    vspeed = 0
                    bouncy = 0
                }
            }
            else
                vspeed = 0
            col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
            if col_one_top
            {
                with (col_one_top)
                {
                    rot = 1
                    event_user(0)
                }
            }
        }
    }
    else if (modo_lava == 1)
    {
        hspeed = 0
        gravity = 0.02
        if (vspeed > 0.03)
            vspeed = 0.03
    }
    else if (!swimming)
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
    else if (swimming == 1)
    {
        gravity = 0.02
        if (vspeed > 1)
            vspeed = 1
    }
    if (vspeed < 0)
    {
        solidphy = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solidphy, 1, 0)
        if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_hurtsolid2, 1, 0) || (solidphy && mytop != obj_lighting && solidphy.id != mytop.id) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
        {
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!place_meeting(x, y, obj_solid)))
                y++
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_hurtsolid2, 1, 0) && (!place_meeting(x, y, obj_hurtsolid2)))
                y++
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!place_meeting(x, y, obj_solidphy)))
                y++
            col_one_bottom = collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)
            if col_one_bottom
            {
                with (col_one_bottom)
                {
                    rot = 1
                    event_user(0)
                }
            }
            block = collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, (bbox_top - 1), obj_blockparent, 0, 0)
        if (block && (object_get_parent(object_index) == obj_holdparent || object_get_parent(object_index) == obj_enemyparent_held))
            {
                if (block.ready == 0)
                {
                    with (block)
                        event_user(2)
                }
            }
            vspeed = 0
        }
    }
}
else if inup = 1 
{
    gravity = 0
    vspeed = 0
}
