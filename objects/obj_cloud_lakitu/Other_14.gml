var semisolid, col_one_top, col_one_bottom;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + vspeed), obj_solidtop, 0, 0)
    if (semisolid && obj_mario.bbox_bottom < (semisolid.yprevious + 5))
        y = (semisolid.bbox_top - 8)
    if (vspeed > 4)
        vspeed = 4
}
if (collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_mario.bbox_right, (obj_mario.bbox_bottom - 4), obj_solidtop, 0, 0)))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        col_one_top = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom + 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_onewaygate_top, 0, 0)
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
if (vspeed < 0)
{
    if (collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_top, obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 1, 0) || collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_top, obj_mario.bbox_right, obj_mario.bbox_top, obj_hurtsolid2, 1, 0) || collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_top, obj_mario.bbox_right, obj_mario.bbox_top, obj_solidphy, 1, 0) || collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_top, obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(obj_mario.bbox_left, obj_mario.bbox_top, obj_mario.bbox_right, obj_mario.bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top + 1), obj_mario.bbox_right, (obj_mario.bbox_top + 1), obj_solid, 1, 0) && (!place_meeting(obj_mario.x, obj_mario.y, obj_solid)))
            y++
        while (collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top + 1), obj_mario.bbox_right, (obj_mario.bbox_top + 1), obj_hurtsolid2, 1, 0) && (!place_meeting(obj_mario.x, obj_mario.y, obj_hurtsolid2)))
            y++
        while (collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top + 1), obj_mario.bbox_right, (obj_mario.bbox_top + 1), obj_solidphy, 1, 0) && (!place_meeting(obj_mario.x, obj_mario.y, obj_solidphy)))
            y++
        col_one_bottom = collision_rectangle((obj_mario.bbox_left + 1), ((obj_mario.bbox_top + vspeed) - 1), (obj_mario.bbox_right - 1), (obj_mario.bbox_top - 1), obj_onewaygate_bottom, 1, 0)
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
if (instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1)
{
    if (y < (camera_get_view_y(view_get_camera(0)) + 8))
        y = (camera_get_view_y(view_get_camera(0)) + 8)
}

