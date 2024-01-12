switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_blooper
        break
    case 1:
        sprite_index = spr_SMB3_blooper
        break
    case 2:
        sprite_index = spr_blooper
        break
    case 3:
        sprite_index = spr_NSMBU_blooper
        break
}

hardness = 0
stomp = 0
edible = 1
direct = 1
ready = 0
wings = 0
w_wings = 0
modo_lava = 0
dead_h = 0
apilar = 0
lava = 0
paracaidas = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0

