draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, image_angle, c_white, 1)
if (wings == 1)
{
    switch global.apariencia
    {
        case 0:
            draw_sprite_ext(spr_SMB_wings_16x16, anim, round(x), y, direct*2, 2, image_angle, c_white, 1)
            break
        case 1:
            draw_sprite_ext(spr_SMB3_wings2, anim, round(x), y, direct*2, 2, image_angle, c_white, 1)
            break
        case 2:
            draw_sprite_ext(spr_wings2, anim, round(x), y, direct*2, 2, image_angle, c_white, 1)
            break
        case 3:
            draw_sprite_ext(spr_NSMBU_wings_enemigos_b, anim, (x - (4.5 * direct)), (y + 10), direct, 1, image_angle, c_white, 1)
            break
    }

}
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 2, 2, image_angle, c_white, 1)

