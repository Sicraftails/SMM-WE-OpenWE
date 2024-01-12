switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_star
        sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        sprite_index = spr_SMB3_star
        sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_wings = spr_wings_items
        break
    case 3:
        sprite_index = spr_NSMBU_star
        sprite_wings = spr_NSMBU_wings_items
}

swimming = 0
direct = -1
wings = 0
wings_anim = 0
paracaidas = 0
progresivo = 0
image_speed = 0.3
alarm[10] = 2

