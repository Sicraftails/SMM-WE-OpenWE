image_speed = 0
if (global.apariencia == 0)
{
    sprite_index = spr_SMB_nube
    if (global.bg_level == "snow" && global.modo_noche == 1)
        image_index = 5
    else if (global.bg_level == "snow")
        image_index = 4
    else if (global.bg_level == "castle")
        image_index = 3
    else if (global.bg_level == "underwater")
        image_index = 2
    else if (global.bg_level == "underground" || global.bg_level == "ghost")
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_nube
    if (global.bg_level == "snow" && global.modo_noche == 1)
        image_index = 4
    else if (global.bg_level == "castle")
        image_index = 3
    else if (global.bg_level == "underwater")
        image_index = 2
    else if (global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 2)
{
    sprite_index = spr_nube
    if (global.bg_level == "underwater")
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_nube
    if (global.bg_level == "ghost")
        image_index = 5
    else if ((global.bg_level == "airship" || global.bg_level == "sky") && global.modo_noche == 0)
        image_index = 4
    else if (global.bg_level == "underwater")
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if (global.bg_level == "underground" || global.modo_noche == 1)
        image_index = 1
    else
        image_index = 0
}

