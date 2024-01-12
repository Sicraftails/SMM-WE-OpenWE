switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_drybones
        sprite_wings = spr_SMB_wings
        para_y = 2
        break
    case 1:
        sprite_index = spr_SMB3_drybones
        sprite_wings = spr_SMB3_wings
        para_y = 0
        break
    case 2:
        sprite_wings = spr_wings
        para_y = 0
        break
    case 3:
        sprite_index = spr_NSMBU_drybones
        sprite_wings = spr_NSMBU_wings_enemigos
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
alarm[10] = 2
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
alarm[0] = 180

