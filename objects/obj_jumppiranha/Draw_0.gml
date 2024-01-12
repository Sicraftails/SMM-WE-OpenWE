switch inup
{
    case 1:
        draw_sprite_ext(sprite_index, image_index, x, (y + 16), 1, -1, 0, c_white, 1)
        break
    case 2:
        draw_sprite_ext(sprite_index, image_index, (x + 8), (y + 8), 1, 1, 270, c_white, 1)
        break
    case 3:
        draw_sprite_ext(sprite_index, image_index, (x - 8), (y + 8), 1, 1, 90, c_white, 1)
        break
    default:
        draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
}

if (wings == 1)
{
    if (global.apariencia == 3)
        var xpos = 8
    else
        xpos = 0
    draw_sprite_ext(sprite_wings, wings_anim, (x - xpos), y, 1, 1, image_angle, c_white, 1)
}
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 1, 1, image_angle, c_white, 1)
