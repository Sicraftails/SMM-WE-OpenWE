event_inherited()
if (gravity == 0)
{
    with (instance_create(x, y, obj_shell_held))
    {
        sprite_index = other.sprite_index
        koopainside = -1
        direct = other.direct
        hardness = 100
        flip = 1
        if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        {
            prevhspeed = -2.5
            hspeed = -2.5
        }
        else
        {
            prevhspeed = 2.5
            hspeed = 2.5
        }
    }
    instance_destroy()
}

