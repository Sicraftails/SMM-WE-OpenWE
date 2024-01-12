if (instance_exists(obj_silbido) && ((direct_x == 0) && (direct_y == 0)))
{
    if (x > obj_silbido.x)
        direct_x = 1
    else
        direct_x = -1
    if (y > obj_silbido.y)
        direct_y = 1
    else
        direct_y = -1
}
if ((direct_x != 0) && (direct_y != 0))
{
    if instance_exists(obj_silbido)
    {
        speed = 7
        move_towards_point(obj_silbido.x, obj_silbido.y, speed)
        if (((direct_x == 1) && (x < obj_silbido.x)) || ((direct_x == -1) && (x > obj_silbido.x)))
        {
            hspeed = 0
            x = obj_silbido.x
        }
        if (((direct_y == 1) && (y < obj_silbido.y)) || ((direct_y == -1) && (y > obj_silbido.y)))
        {
            vspeed = 0
            y = obj_silbido.y
        }
        if ((hspeed == 0) && (vspeed == 0))
        {
            if (follow == 1)
            {
                speed = 0
                x_start = follow_x
                y_start = follow_y
                follow = 0
                drag_draw = 1
                if instance_exists(obj_silbido)
                {
                    with (obj_silbido)
                        instance_destroy()
                }
                direct_x = 0
                direct_y = 0
            }
        }
    }
}

