switch global.apariencia
{
    case 0:
        jumping = 1
        hspeed = 1
        if (swimming == 0)
            vspeed = -4.4
        else
            vspeed = -2.2
        break
    case 1:
        jumping = 1
        hspeed = 1
        if (swimming == 0)
            vspeed = -4.4
        else
            vspeed = -2.2
        break
    case 2:
        for (i = 0; i < 4; i++)
        {
            with (instance_create((x + 8), (y + 8), obj_shard))
            {
                sprite_index = spr_egg_bits
                motion_set(other.motion[other.i], 4)
                image_speed = 0
                image_index = other.i
                alarm[0] = 25
            }
        }
        visible = false
        alarm[2] = 2
        break
    case 3:
        for (i = 0; i < 4; i++)
        {
            with (instance_create((x + 8), (y + 8), obj_shard))
            {
                sprite_index = spr_NSMBU_egg_bits
                motion_set((30 + (15 * other.i)), 4)
                image_speed = 0
                image_index = other.i
                alarm[0] = 25
            }
        }
        if (global.apariencia == 2)
            alarm[2] = 2
        else
            instance_destroy()
        break
}

