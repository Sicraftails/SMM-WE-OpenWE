if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
    {
        if (sprite_index == spr_SMB_bowser)
        {
            hspeed = 0.6
            if (image_speed != 0)
                image_speed = 0.2
        }
        else
        {
            if (prevhspeed == 0)
                prevhspeed = hspeed
            hspeed = 0
        }
        direct = 1
    }
    else
    {
        direct = -1
        if (sprite_index == spr_SMB_bowser)
        {
            if (prevhspeed != 0)
            {
                hspeed = prevhspeed
                prevhspeed = 0
            }
            else if (hspeed > 0)
            {
                hspeed = 0.3
                if (x > (xstart + 64))
                    hspeed = (-hspeed)
            }
            else if (hspeed < 0)
            {
                hspeed = -0.3
                if (x < (xstart - 64))
                    hspeed = (-hspeed)
            }
        }
        else
        {
            if (prevhspeed == 0)
                prevhspeed = hspeed
            hspeed = 0
        }
    }
}
event_user(3)
event_user(4)
if (gravity > 0)
{
    gravity = 0.1
    if (vspeed > 3.2)
        vspeed = 3.2
}
if (cooldown > 0)
{
    cooldown--
}

