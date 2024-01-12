switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bonybeetle_b
        s_bonybeetle = spr_SMB_bonybeetle_b
        s_bonybeetle_shell = spr_SMB_bonybeetle_shell_b
        sprite_wings = spr_SMB_wings_b
        para_y = 2
        break
    case 1:
        sprite_index = spr_SMB3_bonybeetle_b
        s_bonybeetle = spr_SMB3_bonybeetle_b
        s_bonybeetle_shell = spr_SMB3_bonybeetle_shell_b
        sprite_wings = spr_SMB3_wings_b
        para_y = 0
        break
    case 2:
        s_bonybeetle = spr_bonybeetle_b
        s_bonybeetle_shell = spr_bonybeetle_shell_b
        sprite_wings = spr_wings_b
        para_y = 0
        break
    case 3:
        sprite_index = spr_NSMBU_bonybeetle_b
        s_bonybeetle = spr_NSMBU_bonybeetle_b
        s_bonybeetle_shell = spr_SMB_bonybeetle_shell_b
        sprite_wings = spr_NSMBU_wings_enemigos_b
        para_y = 0
        break
}

hardness = 6
stomp = 3
edible = 1
dead_h = 0
s_dry = spr_drybones_deads
innave = 0
wings = 0
wings_anim = 0
paracaidas = 0
apilar = 0
swimming = 0
modo_lava = 0
direct = -1
spiny = 0
alarm[10] = 2
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
alarm[0] = 180

