if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_qblock
        if (global.bg_level == "snow" && global.modo_noche == 1)
            image_index = 4
        else if (global.bg_level == "snow")
            image_index = 3
        else if (global.bg_level == "castle")
            image_index = 2
        else if (global.bg_level == "underground" || global.bg_level == "ghost")
            image_index = 1
        else
            image_index = 0
    }
    else if (global.apariencia == 1)
    {
        if (global.bg_level == "snow" && global.modo_noche == 1)
            sprite_index = spr_SMB3_qblock_ice
        else if (global.bg_level == "castle")
            sprite_index = spr_SMB3_qblock_dark
        else if (global.bg_level == "mountain")
        if (global.modo_noche == 1)
        {
            sprite_index = spr_SMB3_qblock_dark
        }
        else
        {
        sprite_index = spr_SMB3_qblock
        }
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_SMB3_qblock_night
        else
            sprite_index = spr_SMB3_qblock
        image_index = 0
    }
    else if (global.apariencia == 2)
    {
        sprite_index = spr_flipblock
        image_index = 0
    }
    else if (global.apariencia == 3)
    {
        if (global.bg_level == "castle")
            sprite_index = spr_NSMBU_block_dark
        else if (global.bg_level == "mountain")
        if (global.modo_noche == 1)
        {
            sprite_index = spr_NSMBU_block_dark
        }
        else
        {
			sprite_index = spr_NSMBU_block
        }
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            sprite_index = spr_NSMBU_block_night
        else
            sprite_index = spr_NSMBU_block
        image_index = 0
    }
}

