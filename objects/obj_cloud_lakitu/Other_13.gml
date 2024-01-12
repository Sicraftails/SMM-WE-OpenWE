var col_one_left, col_one_right;
if ((hspeed > 0 && collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_physicssolid, 0, 0)) || (hspeed < 0 && collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_physicssolid, 0, 0)) || (hspeed > 0 && collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_solidphy, 0, 0)) || (hspeed < 0 && collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_solidphy, 0, 0)) || (hspeed > 0 && collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || (hspeed < 0 && collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_onewaygate_right, 0, 0)))
{
    col_one_left = collision_rectangle(obj_mario.bbox_right, (obj_mario.bbox_top + 1), (obj_mario.bbox_right + 1), (obj_mario.bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    col_one_right = collision_rectangle((obj_mario.bbox_left - 1), (obj_mario.bbox_top + 1), obj_mario.bbox_left, (obj_mario.bbox_bottom - 4), obj_onewaygate_right, 0, 0)
    if (hspeed > 0 && col_one_left)
    {
        with (col_one_left)
        {
            rot = 1
            event_user(0)
        }
    }
    if (hspeed < 0 && col_one_right)
    {
        with (col_one_right)
        {
            rot = 1
            event_user(0)
        }
    }
    hspeed = 0
}

