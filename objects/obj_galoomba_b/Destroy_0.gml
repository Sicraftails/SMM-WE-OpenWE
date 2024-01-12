if (wings == 1)
{
    if (global.apariencia == 3)
    {
        with (instance_create((x + (9 * direct)), (y + 8), obj_wings_dead_b))
            direct = other.direct
    }
    else
    {
        with (instance_create((x + 9), (y + 8), obj_wings_dead_b))
            direct = -1
        with (instance_create((x - 11), (y + 8), obj_wings_dead_b))
        {
            sprite_index = spr_wings_dead2
            direct = -1
        }
    }
}

