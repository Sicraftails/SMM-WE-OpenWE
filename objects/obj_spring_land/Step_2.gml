if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
    if (abs(hspeed) < 0.1)
        hspeed = 0
}
if instance_exists(mytop)
{
    mytop.x = x
    mytop.y = y
    if instance_exists(obj_mario)
    {
        if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && obj_mario.y < (y - 28) && obj_mario.state < 2 && (!place_meeting(x, (y - 16), obj_spring_land)))
        {
            if (vspeed == 0)
                obj_mario.y = ceil((bbox_top - 32))
            else
                obj_mario.y = ceil((bbox_top - (32 - vspeed)))
            if ((hspeed > 0 && (!collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || (hspeed < 0 && (!collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))))
                obj_mario.x += (x - xprevious)
        }
        if (collision_rectangle(bbox_left, bbox_top, (bbox_right - 8), bbox_bottom, obj_mario, 0, 0) && (!collision_rectangle((bbox_left - 1), bbox_top, bbox_left, (bbox_bottom - 4), obj_solid, 0, 0)) && (!collision_rectangle((bbox_left - 1), bbox_top, bbox_left, (bbox_bottom - 4), obj_physicssolid, 0, 0)) && (!collision_rectangle((bbox_left - 1), bbox_top, bbox_left, (bbox_bottom - 4), obj_solidphy, 0, 0)) && (!collision_rectangle((bbox_left - 1), bbox_top, bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0)) && (!collision_rectangle((bbox_left - 1), bbox_top, bbox_left, (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) && obj_mario.x < (x + 6))
        {
            obj_mario.hspeed = -3.5
            event_user(1)
        }
        else if (collision_rectangle((bbox_left + 8), bbox_top, bbox_right, bbox_bottom, obj_mario, 0, 0) && (!collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0)) && (!collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), (bbox_bottom - 4), obj_physicssolid, 0, 0)) && (!collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), (bbox_bottom - 4), obj_solidphy, 0, 0)) && (!collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) && (!collision_rectangle(bbox_right, bbox_top, (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) && obj_mario.x >= (x + 10))
        {
            obj_mario.hspeed = 3.5
            event_user(1)
        }
    }
}
event_inherited()

