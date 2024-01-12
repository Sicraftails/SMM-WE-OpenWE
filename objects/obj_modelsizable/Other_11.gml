for (p = 0; p < size_x; p++)
{
    if (p == 0)
        index = 0
    else if (p == (size_x - 1))
        index = 2
    else
        index = 1
    draw_sprite(sprite, index, (x + (p * 16)), y)
}
for (t = 1; t < size_y; t++)
{
    if (size_y == 3 || size_y == 5 || size_y == 7 || size_y == 9 || size_y == 7 || size_y == 11 || size_y == 13 || size_y == 15 || size_y == 17 || size_y == 19)
    {
        if (t == 1)
            draw_sprite(sprite, 3, ((x + ((size_x * 16) / 2)) - 8), (y + (t * 16)))
        else
            draw_sprite(sprite, 6, ((x + ((size_x * 16) / 2)) - 8), (y + (t * 16)))
    }
    else if (t == 1)
    {
        draw_sprite(sprite, 4, ((x + ((size_x * 16) / 2)) - 16), (y + (t * 16)))
        draw_sprite(sprite, 5, (x + ((size_x * 16) / 2)), (y + (t * 16)))
    }
    else
    {
        draw_sprite(sprite, 7, ((x + ((size_x * 16) / 2)) - 16), (y + (t * 16)))
        draw_sprite(sprite, 8, (x + ((size_x * 16) / 2)), (y + (t * 16)))
    }
}
alarm[1] = 1
