with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.platform = 0
with (instance_create(x, y, obj_platform_res))
    size_x = other.size_x
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_platform_blue_res)
        {
            obj = obj_platform_res
            obj_draw = 111
        }
    }
}
instance_destroy()
