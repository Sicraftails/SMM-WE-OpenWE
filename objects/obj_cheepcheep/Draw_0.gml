if (lava == 1)
{
    switch global.apariencia
    {
        case 0:
            if (global.bg_level == "forest")
                draw_sprite(spr_SMB_purple_cheepcheep, anim, x, y)
            else
                draw_sprite(spr_SMB3_fire_cheepcheep, anim, x, y)
            break
        case 1:
            if (global.bg_level == "forest")
                draw_sprite(spr_SMB3_purple_cheepcheep, anim, x, y)
            else
                draw_sprite(spr_SMB3_fire_cheepcheep, anim, x, y)
            break
        case 2:
            if (global.bg_level == "forest")
                draw_sprite(spr_purple_cheepcheep, anim, x, y)
            else
                draw_sprite(spr_fire_cheepcheep, anim, x, y)
            break
        case 3:
            if (global.bg_level == "forest")
                draw_sprite(spr_NSMBU_pocion_cheepcheep, anim, x, y)
            else
                draw_sprite(spr_NSMBU_fire_cheepcheep, anim, x, y)
            break
    }

}
draw_sprite_ext(sprite_index, image_index, round(x), y, direct, image_yscale, 0, c_white, 1)
if (paracaidas == 1)
    draw_sprite_ext(spr_paracaidas, global.apariencia, x, y, 1, 1, image_angle, c_white, 1)
if (wings == 1)
    draw_sprite_ext(sprite_wings, wings_anim, (x - (9 * direct)), (y - 20), direct, 1, 0, c_white, 1)

