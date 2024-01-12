for (h = 0; h < size_x; h++)
{
    if (h == 0)
        sprite = sprite1
    else if (h == (size_x - 1))
        sprite = sprite3
    else
        sprite = sprite2
    draw_sprite(sprite, image_index, (x + (h * 16)), y)
}

