if (obj_levelmanager.editor == 1)
{
    switch global.apariencia
    {
        case 0:
            sprite_index = spr_SMB_cannon_red
            break
        case 1:
            sprite_index = spr_SMB3_cannon_red
            break
        case 2:
            sprite_index = spr_cannon_red
            break
        case 3:
            sprite_index = spr_NSMBU_cannon_red
            break
    }

    image_index = direct
    if (drag == 1 || mouse_up == 0)
        event_user(15)
}

