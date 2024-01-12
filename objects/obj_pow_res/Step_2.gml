if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_pow
            break
        case 1:
            sprite_index = spr_SMB3_pow
            break
        case 2:
            sprite_index = spr_block_pow
            break
        case 3:
            sprite_index = spr_NSMBU_pow
            image_speed = 0
            if (global.modo_noche == 1 || global.bg_level == "underground")
                image_index = 1
            else if (global.bg_level == "airship" || global.bg_level == "sky")
                image_index = 4
            else if (global.bg_level == "ghost")
                image_index = 3
            else if (global.bg_level == "castle")
                image_index = 2
            else
                image_index = 0
            break
    }

}

