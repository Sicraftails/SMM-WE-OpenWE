image_speed = 0.1
if (global.apariencia == 0)
{
    if (global.modo_noche == 1 && global.bg_level == "forest")
        sprite_index = spr_SMB_lava_purple
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB_lava
    else if (global.modo_noche == 1 && global.bg_level == "mountain")
        sprite_index = spr_SMB_lava
}
else if (global.apariencia == 1)
{
    if (global.modo_noche == 1 && global.bg_level == "forest")
        sprite_index = spr_SMB3_lava_purple
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB3_lava
    else if (global.modo_noche == 1 && global.bg_level == "mountain")
        sprite_index = spr_SMB3_lava
}
else if (global.apariencia == 2)
{
    if (global.modo_noche == 1 && global.bg_level == "forest")
        sprite_index = spr_lava_purple
    else if (global.bg_level == "castle")
        sprite_index = spr_lava
    else if (global.modo_noche == 1 && global.bg_level == "mountain")
        sprite_index = spr_lava
}

