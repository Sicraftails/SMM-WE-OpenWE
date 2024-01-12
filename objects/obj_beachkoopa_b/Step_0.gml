var shell;
event_inherited()
if (jumping == 1)
    swimming = 0
if (ready == 0)
{
    if (gravity == 0)
        hspeed = (max(0, (abs(hspeed) - 0.05)) * sign(hspeed))
    if (hspeed < 0.05 && hspeed > -0.05)
    {
        hspeed = 0
        image_speed = 0.15
        ready = 1
        alarm[10] = 90
    }
}
else if (ready > 0)
{
    if ((sprite_index == spr_beachkoopa_walk_b || sprite_index == spr_beachkoopa_walk_red_b) && ready == 1 && (!collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_shell, 0, 0)))
        ready = 2
    else if (ready == 2)
    {
        shell = collision_rectangle((x + (10 * sign(direct))), bbox_top, (x + (16 * sign(direct))), (bbox_bottom - 4), obj_shell, 0, 0)
        if (shell && shell.held == 0 && shell.sprite_height > 16)
        {
            if (shell.koopainside == 0 && jumping == 0)
            {
                jumping = 1
                y--
                hspeed = (0.6 * sign(direct))
                if (swimming == 1)
                    vspeed = -1.6
                else
                    vspeed = -4
            }
            else if (shell.koopainside != 0)
                hspeed = (-hspeed)
        }
        if (jumping == 1 && gravity == 0 && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_shell, 0, 0)))
        {
            jumping = 0
            if (abs(hspeed) > 0.5)
                hspeed = (0.5 * sign(direct))
        }
    }
}
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1

