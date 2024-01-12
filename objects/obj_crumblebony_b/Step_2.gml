if (sprite_index == spr_NSMBU_bonybeetle_b_desarmar && image_speed < 0)
{
    if (image_index < 0.25)
    {
        with (instance_create(x, y, obj_bonybeetle_b))
            direct = other.direct
        instance_destroy()
    }
}

