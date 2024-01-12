switch global.apariencia
{
    case 0:
        soplete[0] = spr_SMB_soplete_start
        soplete[1] = spr_SMB_soplete
        break
    case 1:
        soplete[0] = spr_SMB3_soplete_start
        soplete[1] = spr_SMB3_soplete
        break
    case 2:
        soplete[0] = spr_soplete_start
        soplete[1] = spr_soplete
        break
    case 3:
        soplete[0] = spr_NSMBU_soplete_start
        soplete[1] = spr_NSMBU_soplete
        break
}

direct_t = 0
rotacion = 0
invisible = 1
mysolid = instance_create((x - 8), (y - 8), obj_solid)
if (!instance_exists(obj_soplete_global))
    instance_create(0, 0, obj_soplete_global)
alarm[0] = 2

