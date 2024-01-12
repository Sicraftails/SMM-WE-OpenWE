if (ball != obj_lighting)
{
    if instance_exists(ball)
    {
        if (global.bg_level == "snow")
        {
            with (instance_create(x, (y - 16), obj_snow_ball_held))
            {
                hspeed = (1.2 * sign(other.direct))
                if (global.apariencia > 1)
                    vspeed = -2.5
                alarm[0] = 20
            }
            with (ball)
                instance_destroy()
        }
        else
        {
            with (ball)
            {
                visible = true
                hspeed = (1.2 * sign(other.direct))
                ready = 1
                alarm[0] = 20
            }
        }
        ball = obj_lighting
    }
}
if (global.apariencia < 2)
{
    if (cont_ball >= 1)
    {
        cont_ball = 0
        if (wings == 0)
            alarm[10] = 20
        alarm[0] = 180
    }
    else
    {
        cont_ball++
        alarm[0] = 20
    }
}
else
    alarm[0] = 180
