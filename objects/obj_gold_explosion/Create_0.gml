var a, b;
image_speed = 0.4
active = 0
direct = 1
a = 0
repeat (8)
{
    with (instance_create(x, y, obj_smoke))
    {
        sprite_index = spr_boltspark
        image_speed = 0.1
        motion_set(a, 0.5)
    }
    a += 45
}
b = 22.5
repeat (8)
{
    with (instance_create(x, y, obj_smoke))
    {
        sprite_index = spr_boltspark
        image_speed = 0.1
        motion_set(b, 1)
    }
    b += 45
}

