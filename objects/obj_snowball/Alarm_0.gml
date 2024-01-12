if (!instance_exists(obj_deadmario))
{
    with (instance_create(x, y, obj_smoke))
    {
        sprite_index = spr_NSMBU_smoke_snowball
        image_speed = 0.6
    }
    alarm[0] = 4
}
