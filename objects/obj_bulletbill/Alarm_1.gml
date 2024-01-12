if (global.apariencia == 3)
{
    if (direct == 1)
    {
        with (instance_create((x - 20), (y - 4), obj_smoke))
            image_index = 6
    }
    else
    {
        with (instance_create((x + 4), (y - 4), obj_smoke))
            image_index = 6
    }
    alarm[1] = 10
}
else
{
    if (direct == 1)
    {
        with (instance_create((x - 20), y, obj_smoke))
            sprite_index = spr_smoke_bulletbill
    }
    else
    {
        with (instance_create((x + 4), y, obj_smoke))
            sprite_index = spr_smoke_bulletbill
    }
    alarm[1] = 30
}

