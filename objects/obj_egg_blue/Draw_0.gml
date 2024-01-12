switch global.apariencia
{
    case 0:
        if (object_index == obj_egg_red)
            draw_sprite_ext(spr_SMB_kuriboshoe2, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_SMB_kuriboshoe, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
        if ready
            draw_sprite_ext(sprite_index, -1, x, (round(y) - 15), direct, 1, 0, c_white, 1)
        if (paracaidas == 1)
            draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 1, 1, image_angle, c_white, 1)
        break
    case 1:
        if (object_index == obj_egg_red)
            draw_sprite_ext(spr_kuriboshoe2, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
        else
            draw_sprite_ext(spr_kuriboshoe, anim, round(x), (round(y) + 1), direct, 1, 0, c_white, 1)
        if ready
            draw_sprite_ext(sprite_index, -1, x, (round(y) - 15), direct, 1, 0, c_white, 1)
        if (paracaidas == 1)
            draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 1, 1, image_angle, c_white, 1)
        break
    case 2:
        draw_sprite_ext(sprite_index, -1, round(x), (round(y) + 1), 1, 1, 0, c_white, 1)
        if (wings == 1)
            draw_sprite(spr_wings_items, wings_anim, x, y)
        if (paracaidas == 1)
            draw_sprite_ext(spr_paracaidas, global.apariencia, (x + 8), y, 1, 1, image_angle, c_white, 1)
        break
    case 3:
        draw_sprite_ext(sprite_index, -1, round(x), (round(y) + 1), 1, 1, 0, c_white, 1)
        if (wings == 1)
            draw_sprite(spr_NSMBU_wings_items, wings_anim, x, y)
        if (paracaidas == 1)
            draw_sprite_ext(spr_paracaidas, global.apariencia, (x + 8), y, 1, 1, image_angle, c_white, 1)
        break
}


