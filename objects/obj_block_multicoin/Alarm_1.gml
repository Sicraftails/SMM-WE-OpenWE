vspeed = 0
y = ystart
if (cointime == 2)
{
    if (global.apariencia == 0)
    {
        sprite_index = spr_SMB_empty_block
        image_speed = 0
        if (global.bg_level == "snow" && global.modo_noche == 1)
            image_index = 4
        else if (global.bg_level == "snow")
            image_index = 3
        else if (global.bg_level == "castle")
            image_index = 2
        else if (global.bg_level == "mountain")
            image_index = 0
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            image_index = 1
        else
            image_index = 0
    }
    else if (global.apariencia == 1)
    {
        sprite_index = spr_SMB3_empty_block
        image_speed = 0
        if (global.bg_level == "snow" && global.modo_noche == 1)
            image_index = 3
        else if (global.bg_level == "castle")
            image_index = 2
        else if (global.bg_level == "mountain")
        if (global.modo_noche == 1)
            image_index = 2
        else
            image_index = 0
        else if (global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
            image_index = 1
        else
            image_index = 0
    }
    else if (global.apariencia == 2)
        sprite_index = spr_qblock_empty
    else if (global.apariencia == 3)
    {
        sprite_index = spr_NSMBU_qblock_empty
        image_speed = 0
        if (global.bg_level == "castle")
            image_index = 2
        else if (global.bg_level != "mountain") && (global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
            image_index = 1
        else if (global.bg_level == "mountain")
        if (global.modo_noche == 1)
            image_index = 2
        else
            image_index = 0
        else
            image_index = 0
    }
}
else
    ready = 0

