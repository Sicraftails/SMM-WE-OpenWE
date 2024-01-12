if (happy == 1)
{
    with (instance_create(((x - 3) + random(round(22))), ((y - 3) + random(round(22))), obj_smoke))
    {
        sprite_index = spr_boltspark
        image_speed = 0.1
    }
}
alarm[0] = 4

