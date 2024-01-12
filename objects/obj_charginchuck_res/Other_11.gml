with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
with (instance_create(x, y, obj_sledgebro_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
instance_destroy()

