if (object_index == obj_bobomb_ready)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_bobomb_ready
            break
        case 1:
            sprite_index = spr_SMB3_bobomb_ready
            break
        case 2:
            sprite_index = spr_bobomb_ready
            break
        case 3:
            sprite_index = spr_NSMBU_bobomb_ready
            break
    }

    if (global.apariencia == 3)
        image_speed = 1
    else
        image_speed = 0.2
}
else
{
    switch global.apariencia
    {
        case 0:
            if (night_sprite == 1)
                sprite_index = spr_SMB_bobomb_night
            else
                sprite_index = spr_SMB_bobomb
            break
        case 1:
            if (night_sprite == 1)
                sprite_index = spr_SMB3_bobomb_night
            else
                sprite_index = spr_SMB3_bobomb
            break
        case 2:
            sprite_index = spr_bobomb
            break
        case 3:
            sprite_index = spr_NSMBU_bobomb
            break
    }

    if (global.apariencia == 3)
        image_speed = 0.6
    else
        image_speed = 0.15
}
