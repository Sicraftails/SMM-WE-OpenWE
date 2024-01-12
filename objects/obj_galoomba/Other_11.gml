if (wings == 1)
{
    if (global.apariencia == 3)
    {
        with (instance_create((x + (9 * direct)), (y + 8), obj_wings_dead))
            direct = other.direct
    }
    else
    {
        with (instance_create((x + 9), (y + 8), obj_wings_dead))
            direct = -1
        with (instance_create((x - 11), (y + 8), obj_wings_dead))
        {
            sprite_index = spr_wings_dead2
            direct = -1
        }
    }
    hspeed = 0
    alarm[10] = 2
    wings = 0
}
else
{
    switch global.apariencia
    {
        case 0:
            with (instance_create(x, y, obj_stomped))
                sprite_index = spr_SMB_goomba_stomped
            break
        case 1:
            with (instance_create(x, y, obj_stomped))
                sprite_index = spr_SMB3_goomba_stomped
            break
        case 2:
            with (instance_create(x, y, obj_galoomba_hold))
            {
                key = other.key
                direct = other.direct
            }
            key = 0
            break
        case 3:
            with (instance_create(x, y, obj_stomped))
            {
                sprite_index = spr_NSMBU_goomba_stomped
                direct = other.direct
            }
            break
    }

    if (key == 1 && global.apariencia != 2)
    {
        with (instance_create((x - 8), (y - 8), obj_key_appear))
            vspeed = -4
        key = 0
    }
    instance_destroy()
}
