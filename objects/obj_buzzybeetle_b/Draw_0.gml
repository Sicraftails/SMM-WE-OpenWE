if (inup == 1)
    draw_sprite_ext(sprite_index, image_index, round(x), y, direct, -1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, 0, c_white, 1)
if (wings == 1)
    draw_sprite_ext(sprite_wings, wings_anim, (x - (9 * direct)), y, direct, 1, 0, c_white, 1)
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, x, (y - 16), 1, 1, image_angle, c_white, 1)
