if (transform != 0)
{
    if (transform == 1)
    {
        with (instance_create(x, y, obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
        }
        global.noteblock = 1
        instance_create(x, y, obj_musicblock_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_noteblock_res)
                {
                    obj = obj_musicblock_res
                    obj_draw = 140
                }
            }
        }
        instance_destroy()
    }
    else if (transform == 2)
    {
        with (instance_create((x - 8), (y - 8), obj_smoke))
        {
            sprite_index = spr_effect_transform
            image_speed = 0.3
        }
        global.noteblock = 2
        instance_create(x, y, obj_noteblock_s_res)
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_noteblock_res)
                {
                    obj = obj_noteblock_s_res
                    obj_draw = 216
                }
            }
        }
        instance_destroy()
    }
}
