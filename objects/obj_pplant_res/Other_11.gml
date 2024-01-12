with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.plant = 1
with (instance_create(x, y, obj_plant_fire_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_pplant_res)
        {
            obj = obj_plant_fire_res
            obj_draw = 110
        }
    }
}
instance_destroy()

