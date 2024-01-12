if (ready > 0)
    draw_sprite_ext(sprite_index, 2, round(x), round(y), scale, scale, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, -1, round(x), round(y), 1, 1, 0, c_white, 1)

