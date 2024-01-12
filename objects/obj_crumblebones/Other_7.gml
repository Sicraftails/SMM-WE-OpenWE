if (sprite_index == spr_NSMBU_drybones_desarmar)
{
    image_speed = 0
    image_index = 37
}
else if (sprite_index == spr_NSMBU_drybones_armar)
{
    with (instance_create(x, y, obj_drybones))
        direct = other.direct
    instance_destroy()
}

