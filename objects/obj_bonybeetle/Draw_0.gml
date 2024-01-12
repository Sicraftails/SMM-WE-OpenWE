if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, (x - (3 * direct)), (y + para_y), 1, 1, image_angle, c_white, 1)
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, 0, c_white, 1)
if (wings == 1)
    draw_sprite_ext(sprite_wings, wings_anim, (x - (9 * direct)), (y - 25), direct, 1, 0, c_white, 1)

