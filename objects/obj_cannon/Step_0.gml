if (global.apariencia == 3 && anim_shoot > 0)
{
    if (anim_shoot >= 12.5)
        anim_shoot = 0
    else
        anim_shoot += 0.5
}
if (d == 1)
    event_inherited()
if (instance_exists(obj_mario) && place_meeting(x, y, obj_mario))
{
    if (obj_mario.x > (x + 8))
    {
        with (obj_mario)
            x++
    }
    else
    {
        with (obj_mario)
            x--
    }
}
if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
    if (abs(hspeed) < 0.1)
        hspeed = 0
}
if (calcular == 1)
{
    if (!outside_view())
        event_user(1)
}

