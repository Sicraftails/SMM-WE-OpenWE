with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.grrrol = 1
instance_create(x, (y - 16), obj_grrrol_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_thwomp_res)
        {
            obj = obj_grrrol_res
            obj_draw = 217
        }
    }
}
instance_destroy()
