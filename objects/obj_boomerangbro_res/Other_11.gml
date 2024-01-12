with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.brothers = transform
switch transform
{
    case 0:
        with (instance_create(x, y, obj_hammerbro_res))
            wings = other.wings
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_boomerangbro_res)
                {
                    obj = obj_hammerbro_res
                    obj_draw = 86
                }
            }
        }
        break
    case 1:
        with (instance_create(x, y, obj_firebro_res))
            wings = other.wings
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_boomerangbro_res)
                {
                    obj = obj_firebro_res
                    obj_draw = 222
                }
            }
        }
        break
    case 2:
        with (instance_create(x, y, obj_icebro_res))
            wings = other.wings
        if instance_exists(obj_card_item)
        {
            with (obj_card_item)
            {
                if (obj == obj_boomerangbro_res)
                {
                    obj = obj_firebro_res
                    obj_draw = 223
                }
            }
        }
        break
}

instance_destroy()


