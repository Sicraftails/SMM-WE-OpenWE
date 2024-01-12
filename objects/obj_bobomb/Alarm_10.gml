event_inherited()
if (wings == 1 || paracaidas == 1)
{
    switch global.apariencia
    {
        case 0:
            if (night_sprite == 1)
                sprite_index = spr_SMB_bobomb_wings_night
            else
                sprite_index = spr_SMB_bobomb_wings
            break
        case 1:
            if (night_sprite == 1)
                sprite_index = spr_SMB3_bobomb_wings_night
            else
                sprite_index = spr_SMB3_bobomb_wings
            break
        case 2:
            sprite_index = spr_bobomb_wings
            break
        case 3:
            sprite_index = spr_NSMBU_bobomb_wings
            break
    }

}
