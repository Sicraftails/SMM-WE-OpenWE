var v1, v2, v3;
if (other.y < (y + 8))
{
    if ((!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solid, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_physicssolid, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solidphy, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0)))
    {
        v1 = 0.4
        v2 = 3
        v3 = 2
        if (other.vspeed > 0)
            other.vspeed -= v1
        else if (other.y <= (y - 92))
        {
            other.vspeed--
            if (other.vspeed < (-v2))
                other.vspeed = (-v2)
        }
        else
        {
            other.vspeed--
            if (other.vspeed < (-v3))
                other.vspeed = (-v3)
        }
    }
}

