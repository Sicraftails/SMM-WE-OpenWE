if (other.object_index != obj_cap && other.object_index != obj_propellershroom)
{
    if ((bbox_bottom - vspeed) < (other.bbox_top + 2) && vspeed > 0 && vspeed != 0)
        other.y += vspeed
    if ((bbox_bottom - vspeed) < (other.bbox_top + 1) && vspeed > 0 && (collision_rectangle((other.bbox_left + 4), (other.bbox_bottom + vspeed), (other.bbox_right - 4), (other.bbox_bottom + vspeed), obj_solidtop, 0, 0) || collision_rectangle((other.bbox_left + 4), (other.bbox_bottom + vspeed), (other.bbox_right - 4), (other.bbox_bottom + vspeed), obj_physicssolid, 0, 0)))
    {
        instance_create(other.x, other.y, obj_smoke)
        with (other.id)
            instance_destroy()
    }
}

