if instance_exists(obj_player_warp)
{
    shake = 0
    alarm[2] = 540
    alarm[1] = 600
}
else
{
    with (instance_create(x, y, obj_galoomba2))
    {
        hspeed = (0.5 * sign(other.direct))
        key = other.key
        if (other.gravity == 0)
            vspeed = (-(1 + swimming))
    }
    show_key = 0
    instance_destroy()
}

