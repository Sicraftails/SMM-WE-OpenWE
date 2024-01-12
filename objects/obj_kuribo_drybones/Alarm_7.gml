switch global.apariencia
{
    case 0:
        if (global.powerup == -77)
            sprite_index = spr_SMB_shell_drybones_crumble_reverse_mega
        else
            sprite_index = spr_SMB_shell_drybones_crumble_reverse
        break
    case 1:
        sprite_index = spr_SMB3_shell_drybones_crumble_reverse
        break
    case 2:
        sprite_index = spr_shell_drybones_crumble_reverse
        break
    case 3:
        sprite_index = spr_NSMBU_shell_drybones_armar
        break
}

if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.09
