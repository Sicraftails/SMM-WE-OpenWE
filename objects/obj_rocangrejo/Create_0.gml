switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_rocangrejo_idle
        break
    case 1:
        sprite_index = spr_SMB3_rocangrejo_idle
        break
    case 2:
        sprite_index = spr_rocangrejo_idle
        break
    case 3:
        sprite_index = spr_NSMBU_rocangrejo_idle
        break
}

hardness = 0
stomp = 0
search_mario = 0
direct = -1
edible = 1
wings = 0
paracaidas = 0
para_rot = 0
key = 0
innave = 0
dead_h = 0
swimming = 0
trow = 0
jumping = 0
modo_lava = 0
claw = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.15
apilar = 0
mebelow = -4
alarm[1] = 180

