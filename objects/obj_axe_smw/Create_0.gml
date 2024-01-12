switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_axe
        break
    case 1:
        sprite_index = spr_SMB3_axe
        break
    case 2:
        sprite_index = spr_axe_smw
        break
    case 3:
        sprite_index = spr_NSMBU_axe
        break
    case 4:
        sprite_index = spr_SMB_axe
        break
}

if (global.apariencia == 1)
    image_speed = 0.09
else
    image_speed = 0.15
cadena = 0
caer = 0
soporte = instance_create((x - 16), y, obj_solid)
soporte.image_xscale = 2
piso1 = instance_create((x - 32), (y + 16), obj_castle_floor)
piso2 = instance_create((x - 48), (y + 16), obj_castle_floor)
piso3 = instance_create((x - 64), (y + 16), obj_castle_floor)
piso4 = instance_create((x - 80), (y + 16), obj_castle_floor)
piso5 = instance_create((x - 96), (y + 16), obj_castle_floor)
piso6 = instance_create((x - 112), (y + 16), obj_castle_floor)
piso7 = instance_create((x - 128), (y + 16), obj_castle_floor)
piso8 = instance_create((x - 144), (y + 16), obj_castle_floor)
piso9 = instance_create((x - 160), (y + 16), obj_castle_floor)
piso10 = instance_create((x - 176), (y + 16), obj_castle_floor)
piso11 = instance_create((x - 192), (y + 16), obj_castle_floor)
piso12 = instance_create((x - 208), (y + 16), obj_castle_floor)
piso13 = instance_create((x - 224), (y + 16), obj_castle_floor)
piso14 = instance_create((x - 240), (y + 16), obj_castle_floor)
castle = instance_create((x + 64), (y - 32), obj_castle)

