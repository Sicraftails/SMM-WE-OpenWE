var lava_lift, check, phy_check, spd, phy1, phy2, phy3, phy4;
lava_lift = collision_rectangle(bbox_left, (bbox_bottom - 3), bbox_right, ((bbox_bottom + 4) + vspeed), obj_platform_parent, 0, 0)
if (lava_lift && vspeed >= 0)
{
    check = collision_rectangle(bbox_left, (bbox_bottom - 2), bbox_right, ((bbox_bottom + 2) + vspeed), obj_solidtop, 0, 0)
    phy_check = collision_rectangle(bbox_left, (bbox_bottom - 2), bbox_right, ((bbox_bottom + 2) + vspeed), obj_physicssolid, 0, 0)
    if ((check && check != lava_lift) || (phy_check && phy_check != id))
        exit
    y = (lava_lift.bbox_top - (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)))
    spd = lava_lift.hspeed
    phy1 = collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_physicssolid, 0, 0)
    phy2 = collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_physicssolid, 0, 0)
    if ((lava_lift.hspeed > 0 && (!collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_solid, 0, 0))) || (lava_lift.hspeed > 0 && ((!phy1) || (phy1 && phy1 == id))) || (lava_lift.hspeed > 0 && (!collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (lava_lift.hspeed > 0 && (!collision_rectangle(((bbox_right + 1) + spd), bbox_top, ((bbox_right + 1) + spd), (bbox_bottom - 1), obj_onewaygate_left, 0, 0))) || (lava_lift.hspeed < 0 && (!collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_solid, 0, 0))) || (lava_lift.hspeed < 0 && ((!phy2) || (phy2 && phy2 == id))) || (lava_lift.hspeed < 0 && (!collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (lava_lift.hspeed < 0 && (!collision_rectangle(((bbox_left - 1) + spd), bbox_top, ((bbox_left - 1) + spd), (bbox_bottom - 1), obj_onewaygate_right, 0, 0))))
        x += lava_lift.hspeed
    phy3 = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_physicssolid, 0, 0)
    phy4 = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_physicssolid, 0, 0)
    if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 0, 0) || (phy3 && phy3 != id) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_onewaygate_left, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x -= abs(lava_lift.hspeed)
    else if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0) || (phy4 && phy4 != id) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x += abs(lava_lift.hspeed)
}

