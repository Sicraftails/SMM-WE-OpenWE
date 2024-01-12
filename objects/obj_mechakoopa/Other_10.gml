var i;
for (i = 0; i < 4; i++)
{
    with (instance_create(x, y, obj_enemy_dead))
    {
        girar = 1
        direct = other.direct
        sprite_index = other.s_dry
        hspeed = random_range(-1, 1)
        image_speed = 0
        image_index = i
    }
}
instance_destroy()

