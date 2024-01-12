switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_mechakoopa_green_walk
        s_dry = spr_SMB_mechakoopa_green_deads
        break
    case 1:
        sprite_index = spr_SMB3_mechakoopa_green_walk
        s_dry = spr_SMB3_mechakoopa_green_deads
        break
    case 2:
        sprite_index = spr_mechakoopa_green_walk
        s_dry = spr_mechakoopa_green_deads
        break
    case 3:
        sprite_index = spr_NSMBU_mechakoopa_green_walk
        s_dry = spr_NSMBU_mechakoopa_green_deads
        break
}

hardness = 6
stomp = 3
edible = 1
dead_h = 0
innave = 0
wings = 0
wings_anim = 0
paracaidas = 0
apilar = 0
swimming = 0
modo_lava = 0
direct = -1
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
alarm[10] = 2

