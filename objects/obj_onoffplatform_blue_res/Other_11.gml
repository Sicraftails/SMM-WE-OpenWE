with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.onoff = 0
instance_create(x, y, obj_onoffplatform_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_onoffplatform_blue_res)
        {
            obj = obj_onoffplatform_res
            obj_draw = 13
        }
    }
}
instance_destroy()
