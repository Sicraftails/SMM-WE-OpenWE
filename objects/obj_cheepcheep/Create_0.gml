var vuelo;
switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_cheepcheep
        sprite_wings = spr_SMB_wings
        break
    case 1:
        sprite_index = spr_SMB3_cheepcheep
        sprite_wings = spr_SMB3_wings
        break
    case 2:
        sprite_wings = spr_wings
        break
    case 3:
        sprite_index = spr_NSMBU_cheepcheep
        sprite_wings = spr_NSMBU_wings_enemigos
        break
}

hardness = 0
stomp = 0
edible = 0
vuelo = 0
act_modo_vuelo = 0
modo_vuelo = 0
modo_water = 0
wings = 0
wings_anim = 0
paracaidas = 0
modo_lava = 0
dead_h = 0
direct = -1
jump = 0
apilar = 0
lava = 0
anim = 0
swimming = 0
if (global.apariencia == 3)
    image_speed = 0.5
else
    image_speed = 0.125
alarm[10] = 4

