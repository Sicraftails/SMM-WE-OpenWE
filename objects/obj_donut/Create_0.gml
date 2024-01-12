if (global.apariencia == 0)
{
    sprite_index = spr_SMB_donut
    s_donut = spr_SMB_donut
    s_donut_fall = spr_SMB_donut_fall
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
    sprite_index = spr_SMB3_donut
    s_donut = spr_SMB3_donut
    s_donut_fall = spr_SMB3_donut_fall
    if (global.bg_level == "snow" && global.modo_noche == 1)
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if (global.bg_level == "underground" || global.bg_level == "ghost" || global.modo_noche == 1)
        image_index = 1
    else
        image_index = 0
}
else if (global.apariencia == 2)
{
    s_donut = spr_donut
    s_donut_fall = spr_donut_fall
    image_index = 0
}
else if (global.apariencia == 3)
{
    s_donut = spr_NSMBU_donut
    s_donut_fall = spr_NSMBU_donut_fall
    image_index = 0
}
image_speed = 0
shake = 0
delito = 0
crecer = 0
return_wings = 0
ready = 0
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = spr_SMB_wings_16x16
else if (global.apariencia == 1)
    sprite_wings = spr_SMB3_wings2
else
    sprite_wings = spr_wings_items
alarm[10] = 4

