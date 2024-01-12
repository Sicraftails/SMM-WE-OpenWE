var spd;
if (hold == 0 && ready == 0)
{
    event_user(0)
    hold = 1
    hold_obj = other.id
    hold_speed = 0
    enemy = 1
    other.rotacion = 180
    other.rot = 2
    posx = 0
    posy = 16
    release = 1
    alarm[1] = 30
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
        speed = 0
    }
}
