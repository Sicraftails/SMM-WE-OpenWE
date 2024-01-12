if (downwards == 0)
    draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, (x + 16), (y + 16), 1, 1, 180, c_white, 1)

