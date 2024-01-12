image_speed = 0
if (global.modo_noche == 1 && global.bg_level == "ground")
{
    rotten = 1
    sprite_index = spr_rotten_b
    switch global.apariencia
    {
        case 0:
            sprite_wings = spr_SMB_wings_16x16
            break
        case 1:
            sprite_wings = spr_SMB3_wings2
            break
        case 2:
            sprite_wings = spr_wings_items
            break
        case 3:
            sprite_wings = spr_NSMBU_wings_items
            break
    }

}
else
{
    rotten = 0
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_1up
            image_index = 1
            sprite_wings = spr_SMB_wings_16x16
            break
        case 1:
            sprite_index = spr_SMB3_1up
            image_index = 1
            sprite_wings = spr_SMB3_wings2
            break
        case 2:
            sprite_index = spr_1up
            image_index = 1
            sprite_wings = spr_wings_items
            break
        case 3:
            sprite_index = spr_NSMBU_1up
            image_speed = 0.25
            sprite_wings = spr_NSMBU_wings_items
            break
    }

}
swimming = 0
hardness = 100
stomp = -1
edible = 0
direct = -1
delay = 0
charge = 0
ready = 0
xscale2 = 1
yscale2 = 1
wings = 0
wings_anim = 0
paracaidas = 0
progresivo = 0
alarm[10] = 2

