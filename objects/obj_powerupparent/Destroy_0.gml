if (wings == 1)
{
    with (instance_create((x + 17), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 3), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
}
