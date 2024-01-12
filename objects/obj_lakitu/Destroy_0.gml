if (wings == 1)
{
    with (instance_create((x + 9), (y + 8), obj_wings_dead))
        direct = -1
    with (instance_create((x - 11), (y + 8), obj_wings_dead))
    {
        sprite_index = spr_wings_dead2
        direct = -1
    }
}
if (obj_levelmanager.editor == 0)
    instance_create(x, y, obj_cloud_lakitu)
