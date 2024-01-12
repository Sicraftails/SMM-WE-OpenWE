if (u == 1 && (!place_meeting(x, (y - 16), obj_solidtop)) && (!place_meeting(x, (y - 16), obj_pinchos)))
{
    d = 1
    u = 0
    if (direct == 0)
        direct = 180
    else if (direct == 180)
        direct = 0
    else if (direct == 225)
        direct = 45
    else if (direct == 315)
        direct = 135
    else if (direct == 270)
        direct = 90
}
else if (r == 1 && (!place_meeting((x + 16), y, obj_solidtop)) && (!place_meeting((x + 16), y, obj_pinchos)))
{
    d = 1
    r = 0
    if (direct == 180)
        direct = 90
    else if (direct == 225)
        direct = 135
    else if (direct == 135)
        direct = 45
    else if (direct == 90)
        direct = 0
    else if (direct == 270)
        direct = 180
}
else if (l == 1 && (!place_meeting((x - 16), y, obj_solidtop)) && (!place_meeting((x - 16), y, obj_pinchos)))
{
    d = 1
    l = 0
    if (direct == 0)
        direct = 90
    else if (direct == 45)
        direct = 135
    else if (direct == 90)
        direct = 180
    else if (direct == 270)
        direct = 0
    else if (direct == 315)
        direct = 45
}

