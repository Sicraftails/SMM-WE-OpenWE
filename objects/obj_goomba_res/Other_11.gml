with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.goomba = 1
with (instance_create(x, y, obj_goombrat_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
    key = other.key
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_goomba_res)
        {
            obj = obj_goombrat_res
            obj_draw = 70
        }
    }
}
instance_destroy()

