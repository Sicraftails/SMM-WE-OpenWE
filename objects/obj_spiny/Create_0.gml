switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_spiny
        sprite_wings = spr_SMB_wings
        break
    case 1:
        sprite_index = spr_SMB3_spiny
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        sprite_index = spr_spiny
        sprite_wings = spr_wings
        break
    case 3:
        sprite_index = spr_NSMBU_spiny
        sprite_wings = spr_NSMBU_wings_enemigos
}
hardness = 0
stomp = 1
edible = 0
direct = -1
innave = 0
inup = 0
draw_invert = 0
ready = 0
swimming = 0
modo_lava = 0
apilar = 0
wings = 0
wings_anim = 0
paracaidas = 0
spiny = 0
dead_h = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
alarm[10] = 1

