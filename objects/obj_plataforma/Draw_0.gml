for (h = 0; h < size_x; h++)
{
    if (h == 0)
        index = 0
    else if (h == (size_x - 1))
        index = 2
    else
        index = 1
    draw_sprite(sprite, index, (x + (h * 16)), y)
}

