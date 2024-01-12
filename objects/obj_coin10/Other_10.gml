if (active == 0)
{
    active = 1
    event_user(1)
    event_user(2)
    vspeed = -3
    gravity = 0.2
    with (instance_create(x, y, obj_score))
    {
        event_user(0)
        visible = false
    }
    if (global.apariencia != 0)
        instance_create((x + 8), y, obj_sparkles_coin)
    image_speed = 0.5
    alarm[0] = 30
}
