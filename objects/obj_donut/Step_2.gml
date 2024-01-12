if (wings == 1)
{
    depth = -7
    wings_anim += 0.12
    if (y > (ystart + 14))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 14))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
    if (x < (xstart - 40))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.085
    }
    else if (x > (xstart + 40))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.085
    }
}
if (collision_rectangle((bbox_left - 1), (bbox_top - 5), (bbox_right + 1), (bbox_top + 4), obj_mario, 0, 0) && obj_mario.bbox_bottom < (yprevious + 5) && obj_mario.state < 2)
{
    if (vspeed == 0 || wings == 1)
    {
        if (shake == 0)
        {
            alarm[2] = 1
            alarm[0] = 30
            shake = 1
        }
        sprite_index = s_donut_fall
    }
    else if (vspeed != 0 && wings == 0)
    {
        alarm[2] = -1
        alarm[3] = -1
        shake = 0
        x = xstart
        sprite_index = s_donut_fall
    }
}
else if (vspeed == 0 || wings == 1)
{
    alarm[2] = -1
    alarm[3] = -1
    shake = 0
    x = xstart
    sprite_index = s_donut
    event_user(0)
    alarm[0] = -1
}
else if (vspeed != 0 && wings == 0)
{
    alarm[2] = -1
    alarm[3] = -1
    shake = 0
    x = xstart
    sprite_index = s_donut_fall
}
if (crecer == 1)
{
    if (image_xscale < 1)
    {
        image_xscale += 0.05
        image_yscale += 0.05
    }
    else
    {
        image_xscale = 1
        image_yscale = 1
        crecer = 0
    }
}
if (vspeed > 2.5)
    vspeed = 2.5
if (bbox_top > (room_height + 64) && delito == 0)
{
    delito = 1
    vspeed = 0
    shake = 0
    gravity = 0
    alarm[1] = 180
}
event_inherited()

