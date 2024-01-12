if (sprite_index == spr_SMB_shell_drybones_crumble || sprite_index == spr_SMB_shell_drybones_crumble_mega || sprite_index == spr_SMB3_shell_drybones_crumble || sprite_index == spr_shell_drybones_crumble)
{
    image_speed = 0
    image_index = 1
}
else if (sprite_index == spr_NSMBU_shell_drybones_desarmar)
{
    image_speed = 0
    image_index = 11
}
else if (sprite_index == spr_SMB_shell_drybones_crumble_reverse || sprite_index == spr_SMB_shell_drybones_crumble_reverse_mega || sprite_index == spr_SMB3_shell_drybones_crumble_reverse || sprite_index == spr_shell_drybones_crumble_reverse || sprite_index == spr_NSMBU_shell_drybones_armar)
{
    switch global.apariencia
    {
        case 0:
            if (global.powerup == -77)
                sprite_index = spr_SMB_kuribo_drybones_mega
            else
                sprite_index = spr_SMB_kuribo_drybones
            break
        case 1:
            sprite_index = spr_SMB3_kuribo_drybones
            break
        case 2:
            sprite_index = spr_kuribo_drybones
            break
        case 3:
            sprite_index = spr_NSMBU_kuribo_drybones
            break
    }

    image_speed = 0
    image_index = 0
    invincible = 0
    if instance_exists(obj_mario)
    {
        obj_mario.invincible = 0
        obj_mario.disablecontrols = 0
    }
}
