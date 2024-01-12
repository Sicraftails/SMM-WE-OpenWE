switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_mushroom
        sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        sprite_index = spr_SMB3_mushroom
        sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_wings = spr_wings_items
        break
    case 3:
        sprite_index = spr_NSMBU_mushroom
        sprite_wings = spr_NSMBU_wings_items
}

if (global.apariencia == 3)
    image_speed = 0.25
else
    image_speed = 0
swimming = 0
t_mario = ""
jump = 0
jump2 = 0
direct = -1
wings = 0
wings_anim = 0
position = 0
path_position = 0;
paracaidas = 0
delay = 0
progresivo = 0
alarm[10] = 4
