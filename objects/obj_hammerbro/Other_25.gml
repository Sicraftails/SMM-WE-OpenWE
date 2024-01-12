if (vspeed == 0)
{
    if (wings == 1)
    {
        altura_max = (-((8 - (4 * swimming))))
        altura_min = (-((4.5 - (3 * swimming))))
    }
    else
    {
        altura_max = (-((6.19 - (3 * swimming))))
        altura_min = (-((2.5 - (1 * swimming))))
    }
    if (collision_rectangle(bbox_left, (bbox_top - 40), bbox_right, (bbox_top - 40), obj_blockparent, 0, 0) && collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + 8), obj_blockparent, 0, 0))
    {
        if (floor(random(50)) < 25 && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
        {
            vspeed = altura_max
            alarm[4] = 2
            alarm[5] = 16
        }
        else if ((y + 16) < room_height && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
        {
            vspeed = altura_min
            alarm[4] = 2
            alarm[5] = 35
        }
        else
        {
            vspeed = altura_max
            alarm[4] = 2
            alarm[5] = 16
        }
    }
    else if (collision_rectangle(bbox_left, (bbox_top - 40), bbox_right, (bbox_top - 40), obj_blockparent, 0, 0) && (y + 16) < room_height && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
    {
        vspeed = altura_max
        alarm[4] = 2
        alarm[5] = 16
    }
    else if (collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + 8), obj_blockparent, 0, 0) && (y + 16) < room_height && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
    {
        vspeed = altura_min
        alarm[4] = 2
        alarm[5] = 35
    }
    else
    {
        vspeed = altura_max
        alarm[4] = 2
        alarm[5] = 35
    }
    y--
    if (swimming == 1)
        gravity = 0.2
    else
        gravity = 0.25
    if (global.apariencia == 3)
        alarm[7] = 360
    else
        alarm[1] = 360
}
else
    alarm[1] = 360


