with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.yoshi_egg = 1
with (instance_create(x, y, obj_egg_red_res))
{
    wings = other.wings
    pararacidas = other.paracaidas
}
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_egg_res)
        {
            obj = obj_egg_red_res
            obj_draw = 60
        }
    }
}
instance_destroy()
