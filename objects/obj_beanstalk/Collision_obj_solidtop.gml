if (other.y != ystart && ready == 1 && downwards == 1)
{
    if instance_exists(obj_vine)
    {
        with (obj_vine)
            image_speed = 0
    }
    if (bean_last != obj_lighting && instance_exists(bean_last))
    {
        if (downwards == 0)
        {
            with (bean_last)
            {
                sprite_index = other.s_vine
                image_index = 1
            }
        }
        else
        {
            with (bean_last)
            {
                sprite_index = other.s_vine
                image_index = 3
            }
        }
    }
    instance_destroy()
}

