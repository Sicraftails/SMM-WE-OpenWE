with (instance_create((x - 8), y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.lava_lift = 1
instance_create(x, y, obj_fast_lava_lift_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_lava_lift_res)
        {
            obj = obj_fast_lava_lift_res
            obj_draw = 169
        }
    }
}
instance_destroy()
