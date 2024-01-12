switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_floruga_body
        break
    case 1:
        sprite_index = spr_SMB3_floruga_body
        break
    case 2:
        sprite_index = spr_floruga_body
        break
    case 3:
        sprite_index = spr_NSMBU_floruga_body
        break
}

hardness = 1
stomp = 5
edible = 2
wings = 0
wings_anim = 0
paracaidas = 0
modo_lava = 0
dead_h = 0
direct = -1
innave = 0
swimming = 0
apilar = 0
if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.125
parent = noone
