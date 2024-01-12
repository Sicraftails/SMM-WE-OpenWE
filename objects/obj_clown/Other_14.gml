var semisolid, physolid, col_one_top, col_one_bottom, col_bbox;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    physolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_physicssolid, 0, 0)
    if (semisolid && bbox_bottom < (semisolid.yprevious + 5))
        y = (semisolid.bbox_top - (sprite_height - sprite_get_yoffset(sprite_index)))
    if (physolid && bbox_bottom < (physolid.yprevious + 5))
        y = (physolid.bbox_top - (sprite_height - sprite_get_yoffset(sprite_index)))
    if (vspeed > 4)
        vspeed = 4
}
if ((collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))) || (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0)))))
{
    gravity = 0
    if (vspeed > 0)
    {
        if ((!(collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0))) && (!(collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_physicssolid, 1, 0))) && (!(collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_bullebill_base, 1, 0))) && (!(collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0))))
        {
            vspeed = -0.5
            if (global.apariencia == 3)
            {
                audio_stop_sound(spr_NSMBU_clown_bounce)
                audio_play_sound(spr_NSMBU_clown_bounce, 0, false)
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
else
{
    gravity = 0.02
    if (vspeed > 0.5)
        vspeed = 0.5
}
if (vspeed < 0)
{
    if (inmario == 0)
    {
        if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_hurtsolid2, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
        {
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!(place_meeting(x, y, obj_solid))))
                y++
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_hurtsolid2, 1, 0) && (!(place_meeting(x, y, obj_hurtsolid2))))
                y++
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!(place_meeting(x, y, obj_solidphy))))
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
            vspeed = 0
        }
    }
    else
    {
        if (global.powerup == 0)
            col_bbox = 10
        else
            col_bbox = 16
        if (collision_rectangle(bbox_left, (bbox_top - col_bbox), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - col_bbox), bbox_right, bbox_top, obj_hurtsolid2, 1, 0) || collision_rectangle(bbox_left, (bbox_top - col_bbox), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - col_bbox), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - col_bbox), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
        {
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!(place_meeting(x, y, obj_solid))))
                y++
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_hurtsolid2, 1, 0) && (!(place_meeting(x, y, obj_hurtsolid2))))
                y++
            while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!(place_meeting(x, y, obj_solidphy))))
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
            vspeed = 0
        }
    }
}
if (bbox_top > (room_height + 46) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1) || (global.bg_level == "mountain" && global.modo_noche == 1))))
    instance_destroy()
event_user(14)
