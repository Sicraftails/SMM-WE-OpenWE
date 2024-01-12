with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.icecoin = 0
instance_create(x, y, obj_coin_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_icecoin_res)
        {
            obj = obj_coin_res
            obj_draw = 46
        }
    }
}
instance_destroy()

