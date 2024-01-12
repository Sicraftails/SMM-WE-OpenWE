with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.onoff = 1
instance_create(x, y, obj_onoffplatform_blue_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_onoffplatform_res)
        {
            obj = obj_onoffplatform_blue_res
            obj_draw = 14
        }
    }
}
instance_destroy()
