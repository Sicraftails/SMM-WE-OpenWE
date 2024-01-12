with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.floruga = 0
with (instance_create(x, y, obj_floruga_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_floruga_angry_res)
        {
            obj = obj_floruga_res
            obj_draw = 158
        }
    }
}
instance_destroy()
