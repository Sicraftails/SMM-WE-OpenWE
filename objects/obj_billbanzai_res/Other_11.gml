with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.billbanzai = 1
with (instance_create(x, y, obj_billbanzai_red_res))
{
    R = other.R
    rotacion = other.rotacion
    direct_t = other.direct_t
    s_scaley = other.s_scaley
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_billbanzai_res)
        {
            obj = obj_billbanzai_red_res
            obj_draw = 4
        }
    }
}
instance_destroy()
