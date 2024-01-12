var ypos;
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, 1, image_angle, c_white, 1)
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, (x - (3 * direct)), y, 1, 1, image_angle, c_white, 1)
if (wings == 1)
{
    if (global.apariencia == 3)
        ypos = 22
    else
        ypos = 20
    draw_sprite_ext(sprite_wings, wings_anim, (x - (12 * direct)), (y - ypos), direct, 1, image_angle, c_white, 1)
}

