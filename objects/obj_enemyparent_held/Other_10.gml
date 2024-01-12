if (held == 1)
{
    with (obj_mario)
    {
        holding = 0
        isduckhold = 0
    }
}
with (instance_create(round(x), round((y + sprite_height)), obj_enemy_dead))
{
    sprite_index = other.sprite_index
    image_index = other.image_index
}
instance_destroy()

