if (global.apariencia == 0)
{
    if (global.bg_level == "snow" && global.modo_noche == 1)
        image_index = 5
    else if (global.bg_level == "snow")
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
else if (global.apariencia == 1)
{
    if (global.bg_level == "snow" && global.modo_noche == 1)
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if (global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
        image_index = 1
    else
        image_index = 0
}
else
    image_index = 0

