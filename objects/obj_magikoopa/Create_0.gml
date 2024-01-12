switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_magikoopa
        s_magikoopa = spr_SMB_magikoopa
        s_magikoopa_appear = spr_SMB_magikoopa_appear
        s_magikoopa_disappear = spr_SMB_magikoopa_disappear
        break
    case 1:
        sprite_index = spr_SMB3_magikoopa
        s_magikoopa = spr_SMB3_magikoopa
        s_magikoopa_appear = spr_SMB3_magikoopa_appear
        s_magikoopa_disappear = spr_SMB3_magikoopa_disappear
        break
    case 2:
        s_magikoopa = spr_magikoopa
        s_magikoopa_appear = spr_magikoopa_appear
        s_magikoopa_disappear = spr_magikoopa_disappear
        break
    case 3:
        sprite_index = spr_NSMBU_magikoopa
        s_magikoopa = spr_NSMBU_magikoopa
        s_magikoopa_appear = spr_NSMBU_magikoopa_appear
        s_magikoopa_disappear = spr_NSMBU_magikoopa_disappear
        break
}

xmin = 0
xmax = room_width
hardness = 1
stomp = 0
edible = 2
direct = -1
swimming = 0
wings = 0
w_wings = 0
apilar = 0
dead_h = 0
innave = 0
ready = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0

