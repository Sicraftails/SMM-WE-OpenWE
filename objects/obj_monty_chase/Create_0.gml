switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_montymole
        sprite_wings = spr_SMB_wings
        break
    case 1:
        sprite_index = spr_SMB3_montymole
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        sprite_wings = spr_wings
        break
    case 3:
        sprite_index = spr_NSMBU_montymole
        sprite_wings = spr_NSMBU_wings_enemigos
        break
}

hardness = 0
stomp = 0
edible = 0
wings = 0
wings_anim = 0
paracaidas = 0
innave = 0
dead_h = 0
modo_lava = 0
direct = -1
swimming = 0
charge = 0
apilar = 0
startTime = current_time;
if (global.apariencia == 3)
    image_speed = 1
else
    image_speed = 0.2
alarm[10] = 2

