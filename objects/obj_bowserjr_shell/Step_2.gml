if (charge == 1)
{
    if (instance_exists(obj_mario) && obj_mario.x < x)
    {
        if (hspeed < -2)
            hspeed = -2
        else
            hspeed -= 0.0545
    }
    else if (hspeed > 2)
        hspeed = 2
    else
        hspeed += 0.0545
    if (hspeed < 0 && (collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_solid, 0, 0) || collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_physicssolid, 0, 0) || collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((bbox_left + hspeed), (bbox_top + 1), (bbox_left + hspeed), (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))
        x += xx
    if (hspeed > 0 && (collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_solid, 0, 0) || collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_physicssolid, 0, 0) || collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_bullebill_base, 0, 0) || collision_rectangle((bbox_right + hspeed), (bbox_top + 1), (bbox_right + hspeed), (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))
        x -= xx
}

