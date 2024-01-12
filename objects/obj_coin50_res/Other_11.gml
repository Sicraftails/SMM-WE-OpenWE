with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
switch transform
{
    case 0:
        global.coin10 = 0
        instance_create(x, y, obj_coin10_res)
        break
    case 1:
        global.coin10 = 1
        instance_create(x, y, obj_coin30_res)
        break
}

if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_coin10_res || obj == obj_coin30_res || obj == obj_coin50_res)
        {
            switch other.transform
            {
                case 0:
                    obj = obj_coin10_res
                    obj_draw = 47
                    break
                case 1:
                    obj = obj_coin30_res
                    obj_draw = 48
                    break
            }

        }
    }
}
instance_destroy()
