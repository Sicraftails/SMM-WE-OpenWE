if (sprite_index == spr_drybones_shoot)
{
    with (instance_create(x, (y - 8), obj_bone))
    {
        if (other.direct == -1)
        {
            if (other.swimming == 1)
                hspeed = -0.5
            else
                hspeed = -1
            direct = -1
        }
        else
        {
            if (other.swimming == 1)
                hspeed = 0.5
            else
                hspeed = 1
            direct = 1
        }
    }
    image_speed = 0
    image_index = 1
    alarm[1] = 25
}

