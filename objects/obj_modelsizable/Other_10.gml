var m1 = 3
var m2 = 4
var m3 = 5
for (v = 0; v < size_y; v++)
{
    for (h = 0; h < size_x; h++)
    {
        if (v == 0)
        {
            if (h == 0)
                index = 0
            else if (h == (size_x - 1))
                index = 2
            else
                index = 1
        }
        else if (v == (size_y - 1))
        {
            if (h == 0)
                index = 9
            else if (h == (size_x - 1))
                index = 11
            else
                index = 10
        }
        else if (h == 0)
            index = m1
        else if (h == (size_x - 1))
            index = m3
        else
            index = m2
        draw_sprite(sprite, index, (x + (h * 16)), (y + (v * 16)))
        if (m1 == 3)
            m1 = 6
        else
            m1 = 3
        if (m2 == 4)
            m2 = 7
        else
            m2 = 4
        if (m3 == 5)
            m3 = 8
        else
            m3 = 5
    }
    if (m1 == 3)
        m1 = 6
    else
        m1 = 3
    if (m2 == 4)
        m2 = 7
    else
        m2 = 4
    if (m3 == 5)
        m3 = 8
    else
        m3 = 5
}

alarm[1] = 1
