event_user(8)
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
object = instance_create(x, (y + 8), enemy)
with (object)
{
    visible = false
    if (object_index == obj_shell || object_index == obj_shell_held)
        sprite_index = other.sprite
    stomp = -1
    event_user(0)
}
instance_destroy()
