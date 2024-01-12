if (sprite_height < 20)
{
    if (flip == 0)
        draw_sprite_ext(sprite_index, -1, round(x), y, direct, 1, rotacion, c_white, image_alpha)
    else
        draw_sprite_ext(sprite_index, -1, round(x), (y + 17), direct, -1, rotacion, c_white, image_alpha)
}
else if (flip == 0)
    draw_sprite_ext(sprite_index, -1, round(x), y, direct, 1, rotacion, c_white, image_alpha)
else
    draw_sprite_ext(sprite_index, -1, round(x), y, direct, -1, rotacion, c_white, image_alpha)
