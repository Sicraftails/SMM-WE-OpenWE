xx = abs(hspeed)
if ((hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 4), obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 4), obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 4), obj_physicssolid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 4), obj_physicssolid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 4), obj_onewaygate_right, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)))
{
    hspeed = 0
    if (can_walk == 1)
        can_walk = 2
}
if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 4), obj_solid, 0, 0))
    x += xx
if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 4), obj_solid, 0, 0))
    x -= xx
if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 4), obj_physicssolid, 0, 0))
    x += xx
if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 4), obj_physicssolid, 0, 0))
    x -= xx
if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 4), obj_bullebill_base, 0, 0))
    x += xx
if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 4), obj_bullebill_base, 0, 0))
    x -= xx
if (hspeed < 0 && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 4), obj_onewaygate_right, 0, 0))
    x += xx
if (hspeed > 0 && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 4), obj_onewaygate_left, 0, 0))
    x -= xx

