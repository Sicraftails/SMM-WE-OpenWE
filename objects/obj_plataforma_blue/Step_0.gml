if (wings == 1)
{
    if (!instance_exists(obj_deadmario))
    {
        if (global.apariencia == 3)
            anim += 0.5
        else
            anim += 0.15
    }
    if (ready == 0)
    {
        y = (ystart + (sin((timer * 0.04375)) * 4))
        timer++
    }
    else if (vspeed > 1)
        vspeed = 1
}
else if (vspeed > 2)
    vspeed = 2
if (outside_view() && y > (room_height + 64) && ready == 1)
{
    ready = 2
    vspeed = 0
    gravity = 0
    visible = false
    alarm[2] = 180
}
if instance_exists(obj_mario)
{
    if (collision_rectangle(bbox_left, (bbox_top - 2), bbox_right, (bbox_top + 2), obj_mario, 0, 0) && obj_mario.y < (y - 28) && obj_mario.state < 2)
    {
        if (ready == 0)
        {
            ready = 1
            alarm[1] = 15
        }
    }
}

