if (wings == 1)
{
    with (instance_create((x + 9), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 11), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
    wings = 0
}
else
    event_user(0)
