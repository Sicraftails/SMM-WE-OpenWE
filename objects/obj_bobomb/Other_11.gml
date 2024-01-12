if (wings == 1)
{
    with (instance_create((x - 9), (y - (9 * direct)), obj_wings_dead))
        direct = other.direct
    hspeed = 0
    wings = 0
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
                sprite_index = spr_SMB3_bobomb_wings
            break
        case 2:
            sprite_index = spr_bobomb
            break
        case 3:
            sprite_index = spr_NSMBU_bobomb
            break
    }

    alarm[10] = 1
}
else
{
    with (instance_create(x, y, obj_bobomb_hold))
        direct = other.direct
    instance_destroy()
}
