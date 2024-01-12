event_user(1)
if (global.apariencia == 3)
{
    with (instance_create(x, (y + 8), obj_smoke))
    {
        sprite_index = spr_NSMBU_smoke_foo
        image_speed = 0.5
    }
}
else
{
    with (instance_create((x - 8), (y + 8), obj_smoke))
    {
        sprite_index = spr_smokespin
        image_speed = 0.2
    }
}
with (instance_create((x + 6), (y + 8), obj_shard))
{
    motion_set(45, 4)
    sprite_index = other.sprite_break
    if (global.apariencia == 3)
        image_index = 0
    else
        image_index = global.apariencia
    dir = 1
}
with (instance_create((x + 6), y, obj_shard))
{
    motion_set(60, 4)
    sprite_index = other.sprite_break
    if (global.apariencia == 3)
        image_index = 1
    else
        image_index = global.apariencia
    dir = 1
}
with (instance_create((x - 6), y, obj_shard))
{
    motion_set(120, 4)
    sprite_index = other.sprite_break
    if (global.apariencia == 3)
        image_index = 2
    else
        image_index = global.apariencia
    dir = 0
}
with (instance_create((x - 6), (y + 8), obj_shard))
{
    motion_set(135, 4)
    sprite_index = other.sprite_break
    if (global.apariencia == 3)
        image_index = 3
    else
        image_index = global.apariencia
    dir = 0
}
instance_destroy()


