var icecoin;
prevhspeed = hspeed
event_inherited()
icecoin = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_icecoin, 0, 0)
if icecoin
{
    with (icecoin)
        event_user(1)
    event_user(0)
}
if (hspeed != prevhspeed)
    event_user(0)
if outside_view()
    instance_destroy()
if (gravity == 0 && object_index != obj_fire_clown_small)
{
    vspeed = -2
    y--
}

