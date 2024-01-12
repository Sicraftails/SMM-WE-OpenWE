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
    if ((sprite_index == spr_beachkoopa_walk || sprite_index == spr_beachkoopa_walk_red) && ready == 1 && (!collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom - 4), obj_shell, 0, 0)))
        ready = 2
    else if (ready == 2)
    {
        shell = collision_rectangle((x + (5 * sign(direct))), bbox_top, (x + (8 * sign(direct))), (bbox_bottom - 4), obj_shell, 0, 0)
        if (shell && shell.held == 0 && shell.sprite_height < 17)
        {
            if (shell.koopainside == 0 && jumping == 0)
            {
                jumping = 1
                y--
                if (swimming == 1)
                    vspeed = -1.2
                else
                    vspeed = -2.6
            }
            else if (shell.koopainside != 0)
                hspeed = (-hspeed)
        }
        if (jumping == 1 && gravity == 0)
            jumping = 0
    }
}
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1

