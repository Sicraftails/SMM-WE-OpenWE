var semisolid;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    if (semisolid && bbox_bottom < (semisolid.yprevious + 5) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))
        y = (semisolid.bbox_top - 8)
}
if (collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0) && (!collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), (bbox_bottom - 4), obj_slopeparent, 1, 0)) && vspeed == 0)
{
    if (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 5), obj_solidtop, 0, 0))
        y += 4
}
if (vspeed > -0.85 && collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), bbox_bottom, obj_slopeparent, 1, 0) && (!collision_rectangle((x - 1), (bbox_bottom - 8), (x + 1), (bbox_bottom - 8), obj_slopeparent, 1, 0)))
{
    while collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), bbox_bottom, obj_slopeparent, 1, 0)
        y--
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || collision_rectangle((x - 1), (bbox_bottom + 1), (x + 1), (bbox_bottom + 1), obj_slopeparent, 1, 0))
{
    gravity = 0
    if (vspeed > 0)
        vspeed = 0
}
else if (!swimming)
{
    gravity = 0.2
    if (vspeed > 4)
        vspeed = 4
}
else
{
    gravity = 0.03
    if (vspeed > 1)
        vspeed = 1
}

