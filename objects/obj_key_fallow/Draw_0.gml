if (global.keys > 0)
{
    for (i = 1; i < followers; i += 1)
        draw_sprite(sprite_index, image_index, oldx[(i * closeness)], oldy[(i * closeness)])
}

