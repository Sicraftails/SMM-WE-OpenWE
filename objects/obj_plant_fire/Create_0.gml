switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_pplant_fire_down
        s_down = spr_SMB_pplant_fire_down
        s_up = spr_SMB_pplant_fire_up
        sprite_wings = spr_SMB_wings_16x16
        break
    case 1:
        sprite_index = spr_SMB3_pplant_fire_down
        s_down = spr_SMB3_pplant_fire_down
        s_up = spr_SMB3_pplant_fire_up
        sprite_wings = spr_SMB3_wings2
        break
    case 2:
        sprite_index = spr_pplant_fire_down
        s_down = spr_pplant_fire_down
        s_up = spr_pplant_fire_up
        sprite_wings = spr_wings2
        break
    case 3:
        sprite_index = spr_NSMBU_pplant_fire_down
        s_down = spr_NSMBU_pplant_fire_down
        s_up = spr_NSMBU_pplant_fire_up
        sprite_wings = spr_NSMBU_wings_items
        break
}

hardness = 0
stomp = 1
edible = 0
direct = -1
shoot = 0
anim_shoot = 0
posx_fire = (x - 5)
posy_fire = (y + 5)
innave = 0
wings = 0
wings_anim = 0
paracaidas = 0
dead_h = 0
swimming = 0
modo_lava = 0
apilar = 0
alarm[10] = 2
alarm[2] = 120
if (global.apariencia == 3)
    image_speed = 0.25
else
    image_speed = 0.1

