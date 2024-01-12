with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.bombilla = 1
instance_create(x, y, obj_error_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_bombilla_snd_res)
        {
            obj = obj_error_snd_res
            obj_draw = 11
        }
    }
}
instance_destroy()
