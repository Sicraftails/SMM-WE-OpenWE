event_inherited()
s_dry = spr_drybones_deads
inmune = 1
alarm[6] = 10
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_shell_drybones
        break
    case 1:
        sprite_index = spr_SMB3_shell_drybones
        break
    case 2:
        sprite_index = spr_shell_drybones
        break
    case 3:
        sprite_index = spr_NSMBU_shell_drybones
        break
}

