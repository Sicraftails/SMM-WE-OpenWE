if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            sprite_index = spr_SMB_chainchomp_night
        else
            sprite_index = spr_SMB_chainchomp
        s_chain = spr_SMB_chain
        break
    case 1:
        if (dark == 1)
            sprite_index = spr_SMB3_chainchomp_night
        else
            sprite_index = spr_SMB3_chainchomp
        s_chain = spr_SMB3_chain
        break
    case 2:
        sprite_index = spr_chainchomp
        s_chain = spr_chain
        break
    case 3:
        sprite_index = spr_NSMBU_chainchomp
        s_chain = spr_NSMBU_chain
        break
}

hardness = 0
stomp = 1
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
wings = 0
swimming = 0
paracaidas = 0
fallow_chomp = 1
apilar = 0
sound = 0
alarm[10] = 2
if (global.apariencia == 3)
    image_speed = 0.3
else
    image_speed = 0.15
followers = 5
closeness = 7
amount_previous = 40
for (i = 0; i < amount_previous; i += 1)
{
    oldx[i] = x
    oldy[i] = y
}
