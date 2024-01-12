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

var bottomCheck1 = collision_rectangle(bbox_left, bbox_bottom - 1, bbox_right, bbox_bottom + 1, obj_solidtop, 0, 0);
var bottomCheck2 = collision_rectangle(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom - 4, obj_solidtop, 0, 0);
var slopeCheck = collision_rectangle(bbox_left, bbox_bottom - 1, bbox_right, bbox_bottom + 1, obj_slopeparent, 1, 0);
var physicsSolidCheck1 = collision_rectangle(bbox_left, bbox_bottom - 1, bbox_right, bbox_bottom + 1, obj_physicssolid, 0, 0);
var physicsSolidCheck2 = collision_rectangle(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom - 4, obj_physicssolid, 0, 0);

if ((bottomCheck1 && !bottomCheck2) || slopeCheck || (physicsSolidCheck1 && (!physicsSolidCheck2 || slopeCheck)))
{
    gravity = 0
    if (vspeed > 0)
    {
        if (variable_instance_exists(object_index, "bouncy") && bouncy == 1)
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
        var col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
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
else if (variable_instance_exists(object_index, "paracaidas") && paracaidas == 1)
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
else
{
    gravity = 0.02
    if (vspeed > 1)
        vspeed = 1
}
if (vspeed < 0)
{
    if (collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - vspeed), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!(place_meeting(x, y, obj_solid))))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_physicssolid, 1, 0) && (!(place_meeting(x, y, obj_physicssolid))))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!(place_meeting(x, y, obj_solidphy))))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_bullebill_base, 1, 0) && (!(place_meeting(x, y, obj_bullebill_base))))
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
if (((bbox_top - 16) > room_height && object_index != obj_player_goal_parent && object_index != obj_podoboo) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1)) && object_index != obj_podoboo && object_index != obj_grrrol && object_index != obj_spring_land && object_index != obj_player_goal_parent))
    instance_destroy()
event_user(14)