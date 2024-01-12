switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB2_mushroom
        sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        instance_destroy()
        break
    case 2:
        instance_destroy()
        break
    case 3:
        instance_destroy()
        break
    case 4:
		instance_destroy()
        break
}

swimming = 0
t_mario = ""
jump = 0
jump2 = 0
direct = -1
wings = 0
wings_anim = 0
paracaidas = 0
delay = 0
progresivo = 0
alarm[10] = 4

