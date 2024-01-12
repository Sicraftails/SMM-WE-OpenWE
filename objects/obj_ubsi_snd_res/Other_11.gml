with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
global.ubsi = 1
instance_create(x, y, obj_ahh_snd_res)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_ubsi_snd_res)
        {
            obj = obj_ahh_snd_res
            obj_draw = 1
        }
    }
}
instance_destroy()
