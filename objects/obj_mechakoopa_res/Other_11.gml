with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.bobomb = 1
with (instance_create(x, y, obj_bobomb_ready_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_bobomb_res)
        {
            obj = obj_bobomb_ready_res
            obj_draw = 27
        }
    }
}
instance_destroy()
