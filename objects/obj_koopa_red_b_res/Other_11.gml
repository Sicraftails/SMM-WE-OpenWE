with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.koopa = 0
with (instance_create(x, y, obj_koopa_b_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_koopa_red_res)
        {
            obj = obj_koopa_res
            obj_draw = 94
        }
    }
}
instance_destroy()
