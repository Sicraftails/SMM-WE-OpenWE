if (inup == 1)
    draw_sprite_ext(sprite_index, image_index, x, (y + 16), direct, -1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, c_white, 1)
if (wings == 1)
    draw_sprite_ext(sprite_wings, wings_anim, (x - (9 * direct)), (y - 18), direct, 1, 0, c_white, 1)
