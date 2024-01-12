var spd;
if (hold == 0 && (ready == 0 || ready == 3) && other.inclown == 0 && global.powerup != -82 && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_physicssolid))) && (!(place_meeting(x, y, obj_bullebill_base))) && (!(place_meeting(x, y, obj_bumper))))
{
    event_user(0)
    hold = 2
    other.inclown = 2
    if (global.apariencia == 3)
    {
        if (global.powerup == 0)
            posyy = 6
        else
            posyy = 2
    }
    else
        posyy = 9
    knopen_x[segmenten] = other.x
    if (other.y > (y + 4))
        knopen_y[segmenten] = (other.y + posyy)
    other.yview = (other.y + 32)
    if (other.hspeed > 3)
        spd = 3
    else if (other.hspeed < -3)
        spd = -3
    else
        spd = other.hspeed
    knopen_xspeed[segmenten] = spd
    with (other.id)
    {
        gravity = 0
        stompstyle = 0
        isduck = 0
        isduckhold = 0
        isup = 0
        isuphold = 0
        groundpount = 0
        dash_atack = 0
        dash_cont = 0
        arrow = 0
        arrow_ready = 0
        airspin = 0
        airspin_count = 0
        event_user(15)
    }
}


