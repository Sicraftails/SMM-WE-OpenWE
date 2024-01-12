if (vspeed == 0)
{
    if (wings == 1)
    {
        altura_max = (-((7 - (4 * swimming))))
        altura_min = (-((4.5 - (3 * swimming))))
    }
    else
    {
        altura_max = (-((6.19 - (3 * swimming))))
        altura_min = (-((2.5 - (1 * swimming))))
    }
    start = (y + 16)
    if (global.apariencia < 3 && hspeed != 0)
        prev_hspeed = hspeed
    if (collision_rectangle(bbox_left, (bbox_top - 40), bbox_right, (bbox_top - 40), obj_blockparent, 0, 0) && collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + 8), obj_blockparent, 0, 0))
    {
        if ((!(place_meeting(x, (y + 32), obj_solidtop))) && (!(place_meeting(x, (y + 48), obj_solidtop))) && (!(place_meeting(x, (y + 64), obj_solidtop))) && (!(place_meeting(x, (y + 80), obj_solidtop))) && (!(place_meeting(x, (y + 112), obj_solidtop))) && (!(place_meeting(x, (y + 128), obj_solidtop))))
        {
            vspeed = altura_max
            salto = "big"
            alarm[4] = 1
        }
        else if (floor(random(50)) < 25 && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
        {
            vspeed = altura_max
            salto = "big"
            alarm[4] = 1
        }
        else if ((y + 16) < room_height && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
        {
            vspeed = altura_min
            salto = "small"
            alarm[4] = 1
        }
        else
        {
            vspeed = altura_max
            salto = "big"
            alarm[4] = 1
        }
    }
    else if (collision_rectangle(bbox_left, (bbox_top - 40), bbox_right, (bbox_top - 40), obj_blockparent, 0, 0) && (y + 16) < room_height && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
    {
        vspeed = altura_max
        salto = "big"
        alarm[4] = 1
    }
    else if (collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + 8), obj_blockparent, 0, 0) && (y + 16) < room_height && (y + 32) < room_height && (y + 48) < room_height && (y + 64) < room_height)
    {
        vspeed = altura_min
        salto = "small"
        alarm[4] = 1
    }
    else
    {
        vspeed = altura_max
        salto = "big"
        alarm[4] = 1
    }
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
    alarm[0] = 360


