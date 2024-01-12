if (wings == 1)
{
    with (instance_create((x + (8 * direct)), (y + 9), obj_wings_dead_b))
    {
        sprite_index = spr_wings_dead2
        direct = other.direct
    }
    if (mytopid != obj_lighting && instance_exists(mytopid))
    {
        with (mytopid)
            instance_destroy()
    }
}

