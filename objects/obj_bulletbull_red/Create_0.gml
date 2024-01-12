switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_bulletbill_red
        break
    case 1:
        sprite_index = spr_SMB3_bulletbill_red
        break
    case 2:
        sprite_index = spr_bulletbill_red
        break
    case 3:
        sprite_index = spr_NSMBU_bulletbill_red_right
        break
}

if (global.apariencia == 3)
    image_speed = 0.15
else
{
    image_speed = 0
    image_index = 0
}
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
wings = 0
w_wings = 0
swimming = 0
modo_lava = 0
apilar = 0
alarm[0] = 15
lastdir = direction
anim = 0
homing = 0
alarm[2] = 10
alarm[3] = 600

