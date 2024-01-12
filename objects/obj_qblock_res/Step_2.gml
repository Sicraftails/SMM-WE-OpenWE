if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        if (global.bg_level == "snow" && global.modo_noche == 1)
            sprite_index = spr_SMB_block_ice
        else if (global.bg_level == "snow")
            sprite_index = spr_SMB_block_snow
        else if (global.bg_level == "castle")
            sprite_index = spr_SMB_block_dark
        else if (global.bg_level == "mountain") && (global.modo_noche == 1)
            sprite_index = spr_SMB_block_dark
        else if (global.bg_level != "mountain") && (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_SMB_block_night
        else
            sprite_index = spr_SMB_block
    }
    else if (global.apariencia == 1)
    {
        if (global.bg_level == "snow" && global.modo_noche == 1)
            sprite_index = spr_SMB3_blocks_ice
        else if (global.bg_level == "castle")
            sprite_index = spr_SMB3_block_dark
        else if (global.bg_level == "mountain") && (global.modo_noche == 1)
            sprite_index = spr_SMB3_block_dark
         else if (global.bg_level != "mountain") && (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_SMB3_block_night
        else
            sprite_index = spr_SMB3_block
        if (sprout == -50)
            sprout = 2
    }
    else if (global.apariencia == 2)
    {
        sprite_index = spr_qblock
        if (sprout == -50)
            sprout = 2
    }
    else if (global.apariencia == 3)
    {
        if (global.bg_level == "castle")
            sprite_index = spr_NSMBU_qblock_dark
        else if (global.bg_level == "mountain") && (global.modo_noche == 1)
            sprite_index = spr_NSMBU_qblock_dark
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_NSMBU_qblock_night
        else
            sprite_index = spr_NSMBU_qblock
        image_index = 0
        if (sprout == -50)
            sprout = 2
    }
}

