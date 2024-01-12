if (image_index == 1)
{
    image_index = 0
    invisible = 1
    alarm[0] = 168
    if instance_exists(obj_soplete_invert_global)
    {
        with (obj_soplete_invert_global)
            alarm[0] = 10
    }
}
else if (image_index > 1)
{
    image_index--
    alarm[2] = 4
}

