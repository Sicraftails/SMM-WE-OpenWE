switch global.apariencia
{
    case 0:
        s_sledgebro = spr_SMB_sledgebro
        s_sledgebro_throw = spr_SMB_sledgebro_throw
        sprite_wings = spr_SMB_wings
        break
    case 1:
        s_sledgebro = spr_SMB3_sledgebro
        s_sledgebro_throw = spr_SMB3_sledgebro_throw
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        s_sledgebro = spr_sledgebro
        s_sledgebro_throw = spr_sledgebro_throw
        sprite_wings = spr_wings
        break
    case 3:
        s_sledgebro = spr_NSMBU_sledgebro
        sprite_index = spr_NSMBU_sledgebro
        s_sledgebro_throw = spr_NSMBU_sledgebro_throw
        sprite_wings = spr_NSMBU_wings_enemigos
        break
}

hardness = 0
stomp = 0
edible = 0
direct = -1
wings = 0
wings_anim = 0
paracaidas = 0
volar = 0
apilar = 0
dead_h = 0
innave = 0
swimming = 0
alarm[10] = 2
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
jumping = 0
prev_hspeed = 0
trow = 0
alarm[1] = 480
alarm[3] = 60

