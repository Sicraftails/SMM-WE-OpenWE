var spd2, check, check_solid, check_phy, check_platform;
if instance_exists(obj_mario)
{
    if (vspeed < 1)
        spd2 = 1
    else
        spd2 = vspeed
    check = collision_rectangle(obj_mario.bbox_left, (bbox_top - 5), obj_mario.bbox_right, (bbox_top + spd2), obj_solidtop, 0, 1)
    check_solid = collision_rectangle(obj_mario.bbox_left, (bbox_top - 5), obj_mario.bbox_right, (bbox_top + spd2), obj_solid, 0, 0)
    check_phy = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 5), obj_mario.bbox_right, (bbox_top + spd2), obj_physicssolid, 0, 0)
    check_platform = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 5), obj_mario.bbox_right, (bbox_top + spd2), obj_platform_parent, 0, 0)
    if (check_platform && check_platform != id && check_platform.vspeed < 0)
        exit
    if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, ((bbox_top + 3) + vspeed), obj_mario, 0, 0) && obj_mario.y < (bbox_top - 27) && obj_mario.state < 2)
    {
        if (vspeed > 0 && check && check != id)
        {
            obj_mario.y = (check.bbox_top - 32)
            exit
        }
        if (vspeed > 0 && check_solid)
        {
            obj_mario.y = (check_solid.bbox_top - 32)
            exit
        }
        if (vspeed > 0 && check_phy)
        {
            obj_mario.y = (check_phy.bbox_top - 32)
            exit
        }
        if (collision_rectangle(obj_mario.bbox_left, ((obj_mario.bbox_top - 1) - vspeed), obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 0, 0) || collision_rectangle(obj_mario.bbox_left, ((obj_mario.bbox_top - 1) - vspeed), obj_mario.bbox_right, obj_mario.bbox_top, obj_physicssolid, 0, 0) || collision_rectangle(obj_mario.bbox_left, ((obj_mario.bbox_top - 1) - vspeed), obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 0, 0) || (collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, (obj_mario.bbox_top + 1), obj_onewaygate_bottom, 0, 0) && vspeed < 0))
        {
            obj_mario.vspeed = 0
            exit
        }
        obj_mario.y = ceil((bbox_top - 31))
        if ((hspeed > 0 && (!collision_rectangle(((obj_mario.bbox_right + 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_right + 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || (hspeed < 0 && (!collision_rectangle(((obj_mario.bbox_left - 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_left - 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0))) || (hspeed > 0 && (!collision_rectangle(((obj_mario.bbox_right + 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_right + 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_physicssolid, 0, 0))) || (hspeed < 0 && (!collision_rectangle(((obj_mario.bbox_left - 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_left - 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_physicssolid, 0, 0))) || (hspeed > 0 && (!collision_rectangle(((obj_mario.bbox_right + 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_right + 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (hspeed < 0 && (!collision_rectangle(((obj_mario.bbox_left - 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_left - 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (hspeed > 0 && (!collision_rectangle(((obj_mario.bbox_right + 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_right + 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 0, 0))) || (hspeed < 0 && (!collision_rectangle(((obj_mario.bbox_left - 1) + hspeed), obj_mario.bbox_top, ((obj_mario.bbox_left - 1) + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 0, 0))))
            obj_mario.x += hspeed
    }
}

