if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, (x - (3 * direct)), y, 1, 1, image_angle, c_white, 1)
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, 0, c_white, 1)
if (wings == 1)
{
    if (global.apariencia == 3)
        var ypos = 27
    else
        ypos = 22
    draw_sprite_ext(sprite_wings, wings_anim, (x - (12 * direct)), (y - ypos), direct, 1, 0, c_white, 1)
}


