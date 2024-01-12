with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.foo = 1
instance_create(x, y, obj_foo_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_torbellino_res)
        {
            obj = obj_foo_res
            obj_draw = 215
        }
    }
}
instance_destroy()
