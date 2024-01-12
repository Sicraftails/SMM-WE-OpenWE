passenger = collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top - 5), obj_mario, 0, 0)
if (passenger && passenger.state < 2)
{
    if (ready == 0)
    {
        ready = 1
        vspeed = 1.2
    }
}
else
{
    ready = 0
    vspeed = 0
}
if (ready == 1)
    vspeed += -0.05
else
    vspeed = 0
if (vspeed < -0.4)
    vspeed = -0.4
