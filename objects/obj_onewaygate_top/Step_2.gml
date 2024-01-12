var solidoneway;
if instance_exists(obj_mario)
{
    with (obj_mario)
    {
        solidoneway = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), other.mytop, 0, 0)
        if (solidoneway && vspeed > 0 && bbox_bottom < (solidoneway.yprevious + 5) && (!collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (solidoneway.y - 1), obj_solid, 1, 0)))
        {
            with (other.id)
            {
                rot = 1
                event_user(0)
            }
        }
    }
}
if (rot == 1)
{
    if (up == 0)
    {
        if (rotacion > (rot_angle - 5))
            rotacion -= 1
        else
            up = 1
    }
    if (up == 1)
    {
        if (rotacion < (rot_angle + 5))
            rotacion += 1
        else
            up = 2
    }
    else if (up == 2)
    {
        if (rotacion > rot_angle)
            rotacion -= 1
        else
        {
            up = 0
            rot = 0
        }
    }
}
else
    rotacion = rot_angle

