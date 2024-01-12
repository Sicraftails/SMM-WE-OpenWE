for (i = 0; i < size_y; i++)
{
    if (i == 0)
    {
        with (instance_create((x + 8), ((y + 8) + (16 * i)), obj_pokey))
            image_index = 0
    }
    else
    {
        with (instance_create((x + 8), ((y + 8) + (16 * i)), obj_pokey))
        {
            image_index = 1
            if (other.up == 0)
            {
                up = 1
                other.up = 1
            }
            else
            {
                up = 0
                other.up = 0
            }
        }
    }
}

