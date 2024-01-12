gravity = 0.1
hspeed = 0
if (wings == 1 && obj_levelmanager.editor == 0)
{
    with (instance_create((x + 17), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 3), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
    wings = 0
    return_wings = 1
}

