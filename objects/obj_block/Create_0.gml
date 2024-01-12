switch global.apariencia
{
    case 0:
        if (global.bg_level == "snow" && global.modo_noche == 1)
            sprite_index = spr_SMB_block_ice
        else if (global.bg_level == "snow")
            sprite_index = spr_SMB_block_snow
        else if (global.bg_level == "castle")
            sprite_index = spr_SMB_block_dark
        else if ((global.bg_level == "mountain") && (global.modo_noche == 1))
            sprite_index = spr_SMB_block
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_SMB_block_night
        else
            sprite_index = spr_SMB_block
        break
    case 1:
        if (global.bg_level == "snow" && global.modo_noche == 1)
            sprite_index = spr_SMB3_blocks_ice
        else if (global.bg_level == "castle")
            sprite_index = spr_SMB3_block_dark
        else if ((global.bg_level == "mountain") && (global.modo_noche == 1))
            sprite_index = spr_SMB3_block_dark
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_SMB3_block_night
        else
            sprite_index = spr_SMB3_block
        break
    case 3:
        if (global.bg_level == "castle")
            sprite_index = spr_NSMBU_qblock_dark
        else if ((global.bg_level == "mountain") && (global.modo_noche == 1))
            sprite_index = spr_NSMBU_qblock_dark
        else if (global.bg_level != "mountain") && (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_NSMBU_qblock_night
        else
            sprite_index = spr_NSMBU_qblock
        break
}

if (global.apariencia == 3)
    image_speed = 0.2
else
    image_speed = 0.15
sprout = -1
progresivo = 0
ready = 0
wings = 0
new_index = 0.2
wings_anim = 0
downwards = 0
s_scalex = 1
s_scaley = 1
expand = 0
expand2 = 0
expand3 = 0
if (global.apariencia == 0)
    sprite_wings = spr_SMB_wings_16x16
else if (global.apariencia == 1)
    sprite_wings = spr_SMB3_wings2
else
    sprite_wings = spr_wings_items
alarm[10] = 4

