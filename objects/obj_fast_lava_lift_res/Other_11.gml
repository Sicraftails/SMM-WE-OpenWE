with (instance_create((x - 8), y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.lava_lift = 0
instance_create(x, y, obj_lava_lift_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_fast_lava_lift_res)
        {
            obj = obj_lava_lift_res
            obj_draw = 168
        }
    }
}
instance_destroy()
