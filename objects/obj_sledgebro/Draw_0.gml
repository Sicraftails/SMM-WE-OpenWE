if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, (x - (6 * direct)), (y - 4), 1, 1, image_angle, c_white, 1)
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, 0, c_white, 1)
if (wings == 1)
{
    if (direct == 1)
        draw_sprite_ext(sprite_wings, wings_anim, (x - 14), (y - 26), direct, 1, 0, c_white, 1)
    else
        draw_sprite_ext(sprite_wings, wings_anim, (x + 14), (y - 26), direct, 1, 0, c_white, 1)
}

