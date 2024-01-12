for (v = 0; v < size_y; v++)
{
    if (v == 0)
    {
        if (place_meeting(x, (y - 16), obj_modelsolid) && (!place_meeting(x, y, obj_modelsolid)))
            index = 1
        else
            index = 0
    }
    else if (v == (size_y - 1))
    {
        if (place_meeting(x, (y + 16), obj_modelsolid) && (!place_meeting(x, y, obj_modelsolid)))
            index = 1
        else
            index = 2
    }
    else
        index = 1
    draw_sprite(sprite, index, x, (y + (v * 16)))
}

